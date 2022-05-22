
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
items_df    # prints the items_df data frame to the Console
#>                                         prefab                   token
#> 1                          Abomination_attack1            Swing attack
#> 2                          Abomination_attack2             Slam attack
#> 3                          Abomination_attack3      Stub to the ground
#> 4                                        Acorn                oakseeds
#> 5                                        Amber                   amber
#> 6                                  Amber Pearl              amberpearl
#> 7                                 Ancient Seed             ancientseed
#> 8                           Armor Bronze Chest            chest_bronze
#> 9                            Armor Bronze Legs             legs_bronze
#> 10                         Armor Fenring Chest            chest_fenris
#> 11                          Armor Fenring Legs             legs_fenris
#> 12                            Armor Iron Chest              chest_iron
#> 13                             Armor Iron Legs               legs_iron
#> 14                         Armor Leather Chest           chest_leather
#> 15                          Armor Leather Legs            legs_leather
#> 16                        Armor Padded Cuirass          chest_pcuirass
#> 17                        Armor Padded Greaves           legs_pgreaves
#> 18                            Armor Rags Chest              chest_rags
#> 19                             Armor Rags Legs               legs_rags
#> 20                            Armor Root Chest              chest_root
#> 21                             Armor Root Legs               legs_root
#> 22                   Armor Troll Leather Chest      chest_trollleather
#> 23                    Armor Troll Leather Legs       legs_trollleather
#> 24                            Armor Wolf Chest              chest_wolf
#> 25                             Armor Wolf Legs               legs_wolf
#> 26                                Arrow Bronze            arrow_bronze
#> 27                                  Arrow Fire              arrow_fire
#> 28                                 Arrow Flint             arrow_flint
#> 29                                 Arrow Frost             arrow_frost
#> 30                                  Arrow Iron              arrow_iron
#> 31                                Arrow Needle            arrow_needle
#> 32                              Arrow Obsidian          arrow_obsidian
#> 33                                Arrow Poison            arrow_poison
#> 34                                Arrow Silver            arrow_silver
#> 35                                  Arrow Wood              arrow_wood
#> 36                           Atgeir Blackmetal       atgeir_blackmetal
#> 37                               Atgeir Bronze           atgeir_bronze
#> 38                                 Atgeir Iron             atgeir_iron
#> 39                             Axe Black Metal          axe_blackmetal
#> 40                                  Axe Bronze              axe_bronze
#> 41                                   Axe Flint               axe_flint
#> 42                                    Axe Iron                axe_iron
#> 43                                   Axe Stone               axe_stone
#> 44                                      Barley                  barley
#> 45                                Barley Flour             barleyflour
#> 46                                 Barley Wine              barleywine
#> 47                            Barley Wine Base          barleywinebase
#> 48                                   bat_melee               Bat melee
#> 49                                   Battleaxe               battleaxe
#> 50                           Battleaxe Crystal       battleaxe_crystal
#> 51                                      Beard1                 beard01
#> 52                                     Beard10                 beard10
#> 53                                      Beard2                 beard02
#> 54                                      Beard3                 beard03
#> 55                                      Beard4                 beard04
#> 56                                      Beard5                 beard05
#> 57                                      Beard6                 beard06
#> 58                                      Beard7                 beard07
#> 59                                      Beard8                 beard08
#> 60                                      Beard9                 beard09
#> 61                                  Beard None                 nobeard
#> 62                                 Beech Seeds              beechseeds
#> 63                               Belt Strength            beltstrength
#> 64                                 Birch Seeds              birchseeds
#> 65                                 Black Metal              blackmetal
#> 66                           Black Metal Scrap         blackmetalscrap
#> 67                                  Black Soup               blacksoup
#> 68                             blob_attack_aoe                    fart
#> 69                        blobelite_attack_aoe                    fart
#> 70                              blobtar_attack          fireballattack
#> 71                                    Bloodbag                bloodbag
#> 72                               Blood Pudding            bloodpudding
#> 73                                 Blueberries             blueberries
#> 74                            boar_base_attack            boar attack1
#> 75                                  Boar Jerky               boarjerky
#> 76                                   Bomb Ooze                oozebomb
#> 77                              Bone Fragments           bonefragments
#> 78                         bonemass_attack_aoe                    heal
#> 79                       bonemass_attack_punch                    slap
#> 80                       bonemass_attack_spawn                    heal
#> 81                       bonemass_attack_throw             slime throw
#> 82                                         Bow                     bow
#> 83                             Bow Draugr Fang          bow_draugrfang
#> 84                               Bow Fine Wood            bow_finewood
#> 85                                Bow Huntsman            bow_huntsman
#> 86                                       Bread                   bread
#> 87                                 Bread Dough              breaddough
#> 88                                      Bronze                  bronze
#> 89                                Bronze Nails             bronzenails
#> 90                              Cape Deer Hide           cape_deerhide
#> 91                                  Cape Linen              cape_linen
#> 92                                    Cape Lox                cape_lox
#> 93                                   Cape Odin               cape_odin
#> 94                                   Cape Test               CAPE TEST
#> 95                             Cape Troll Hide          cape_trollhide
#> 96                                   Cape Wolf               cape_wolf
#> 97                                      Carrot                  carrot
#> 98                                Carrot Seeds             carrotseeds
#> 99                                 Carrot Soup              carrotsoup
#> 100                                      Chain                   chain
#> 101                                     Chitin                  chitin
#> 102                                 Cloudberry            cloudberries
#> 103                                       Club                    club
#> 104                                       Coal                    coal
#> 105                                      Coins                   coins
#> 106                           Cooked Deer Meat        deer_meat_cooked
#> 107                            Cooked Lox Meat          loxmeat_cooked
#> 108                                Cooked Meat        boar_meat_cooked
#> 109                           Cooked Wolf Meat        wolf_meat_cooked
#> 110                                     Copper                  copper
#> 111                                 Copper Ore               copperore
#> 112                                  Crypt Key                cryptkey
#> 113                                    Crystal                 crystal
#> 114                                 Cultivator              cultivator
#> 115                                  Dandelion               dandelion
#> 116                          Deathsquito_sting            Wraith melee
#> 117                                  Deer Hide                deerhide
#> 118                                  Deer Meat               deer_meat
#> 119                                  Deer Stew                deerstew
#> 120                                dragon_bite        Dragon claw left
#> 121                           dragon_claw_left        Dragon claw left
#> 122                          dragon_claw_right        Dragon claw left
#> 123                          dragon_coldbreath           dragon breath
#> 124                   dragon_coldbreath_ O L D           dragon breath
#> 125                        dragon_spit_shotgun               cold ball
#> 126                               dragon_taunt                  scream
#> 127                                 Dragon Egg               dragonegg
#> 128                                Dragon Tear              dragontear
#> 129                               draugr_arrow          Ironhead arrow
#> 130                                 draugr_axe              Dragur axe
#> 131                                 draugr_bow                     Bow
#> 132                               draugr_sword              Dragur axe
#> 133                             Eikthyr_antler             StagAttack1
#> 134                             Eikthyr_charge             StagAttack2
#> 135                       Eikthyr_flegs_ O L D             StagAttack1
#> 136                              Eikthyr_stomp                    slap
#> 137                                 Elder Bark               elderbark
#> 138                                   Entrails                entrails
#> 139                                  Eyescream               eyescream
#> 140                                   Feathers                feathers
#> 141                        Fenring_attack_claw                    claw
#> 142                    Fenring_attack_fireclaw                    claw
#> 143             Fenring_attack_fireclaw_double                    claw
#> 144                      Fenring_attack_flames  Fenring cultist flames
#> 145                        Fenring_attack_jump                    claw
#> 146                              Fenring_taunt                  scream
#> 147                                  Fine Wood                finewood
#> 148                                   Fir Cone                 fircone
#> 149                                Fish Cooked             fish_cooked
#> 150                               Fishing Bait             fishingbait
#> 151                                Fishing Rod              fishingrod
#> 152                                   Fish Raw                fish_raw
#> 153                                 Fish Wraps               fishwraps
#> 154                           Fist Fenrir Claw       fistweapon_fenris
#> 155                                   Flametal                flametal
#> 156                               Flametal Ore             flametalore
#> 157                                       Flax                    flax
#> 158                                      Flint                   flint
#> 159                               Freeze Gland             freezegland
#> 160                              gd_king_punch                    jaws
#> 161                          gd_king_rootspawn                   spawn
#> 162                             gd_king_scream                  scream
#> 163                              gd_king_shoot           shaman attack
#> 164                              gd_king_stomp                    jaws
#> 165                               Ghost_attack                    jaws
#> 166                             Goblin Armband        Iron plate armor
#> 167                    Goblin Brute_ Arm Guard        Iron plate armor
#> 168                       Goblin Brute_ Attack             Brute sword
#> 169                    Goblin Brute_ Backbones        Iron plate armor
#> 170              Goblin Brute_ Executioner Cap        Iron plate armor
#> 171                    Goblin Brute_ Hip Cloth        Iron plate armor
#> 172                    Goblin Brute_ Leg Bones        Iron plate armor
#> 173                  Goblin Brute_ Rage Attack             Brute sword
#> 174               Goblin Brute_ Shoulder Guard        Iron plate armor
#> 175                        Goblin Brute_ Taunt             Brute taunt
#> 176                                Goblin Club                    Club
#> 177                              Goblin Helmet        Iron plate armor
#> 178                          Goblin King_ Beam           dragon breath
#> 179                       Goblin King_ Meteors                   spawn
#> 180                          Goblin King_ Nova                    slap
#> 181                         Goblin King_ Taunt                  scream
#> 182                             Goblin Legband        Iron plate armor
#> 183                                Goblin Loin        Iron plate armor
#> 184              Goblin Shaman_attack_fireball          fireballattack
#> 185                  Goblin Shaman_attack_poke                    Club
#> 186               Goblin Shaman_attack_protect                    heal
#> 187           Goblin Shaman_ Headdress_antlers                    Club
#> 188          Goblin Shaman_ Headdress_feathers                    Club
#> 189                Goblin Shaman_ Staff_ Bones                    Club
#> 190             Goblin Shaman_ Staff_ Feathers                    Club
#> 191                           Goblin Shoulders        Iron plate armor
#> 192                               Goblin Spear             Flint spear
#> 193                               Goblin Sword            Bronze sword
#> 194                               Goblin Torch                   Torch
#> 195                               Goblin Totem             goblintotem
#> 196                           Greydwarf_attack                    jaws
#> 197                     Greydwarf_elite_attack                    jaws
#> 198                    Greydwarf_shaman_attack           shaman attack
#> 199                      Greydwarf_shaman_heal                    heal
#> 200                            Greydwarf_throw             throw stone
#> 201                              Greydwarf Eye            greydwarfeye
#> 202                            Greyling_attack                    jaws
#> 203                                       Guck                    guck
#> 204                                      Hair1                  hair01
#> 205                                     Hair10                  hair10
#> 206                                     Hair11                  hair11
#> 207                                     Hair12                  hair12
#> 208                                     Hair13                  hair13
#> 209                                     Hair14                  hair14
#> 210                                      Hair2                  hair02
#> 211                                      Hair3                  hair03
#> 212                                      Hair4                  hair04
#> 213                                      Hair5                  hair05
#> 214                                      Hair6                  hair06
#> 215                                      Hair7                  hair07
#> 216                                      Hair8                  hair08
#> 217                                      Hair9                  hair09
#> 218                                  Hair None                  nohair
#> 219                                     Hammer                  hammer
#> 220                                Hard Antler              hardantler
#> 221                        hatchling_spit_cold               cold ball
#> 222                   Health Upgrade_ Bonemass          Bonemass heart
#> 223                   Health Upgrade_ G D King             Elder heart
#> 224                              Helmet Bronze           helmet_bronze
#> 225                               Helmet Drake            helmet_drake
#> 226                             Helmet Dverger          helmet_dverger
#> 227                             Helmet Fenring           helmet_fenris
#> 228                                Helmet Iron             helmet_iron
#> 229                             Helmet Leather          helmet_leather
#> 230                                Helmet Odin             helmet_odin
#> 231                              Helmet Padded           helmet_padded
#> 232                                Helmet Root             helmet_root
#> 233                       Helmet Troll Leather     helmet_trollleather
#> 234                                Helmet Yule             helmet_yule
#> 235                                        Hoe                     hoe
#> 236                                      Honey                   honey
#> 237                        imp_fireball_attack          fireballattack
#> 238                                       Iron                    iron
#> 239                                 Iron Nails               ironnails
#> 240                                   Iron Ore                 ironore
#> 241                                 Iron Scrap               ironscrap
#> 242                                   Jute Red                 jutered
#> 243                          Knife Black Metal        knife_blackmetal
#> 244                              Knife Butcher           knife_butcher
#> 245                               Knife Chitin            knife_chitin
#> 246                               Knife Copper            knife_copper
#> 247                                Knife Flint             knife_flint
#> 248                               Knife Silver            knife_silver
#> 249                             Leather Scraps           leatherscraps
#> 250                         Leech_ Bite Attack                    jaws
#> 251                               Linen Thread             linenthread
#> 252                                   lox_bite                lox bite
#> 253                                  lox_stomp                    slap
#> 254                                   Lox Meat                 loxmeat
#> 255                                   Lox Pelt                 loxpelt
#> 256                                    Lox Pie                  loxpie
#> 257                           Lox Pie Uncooked         loxpie_uncooked
#> 258                                Mace Bronze             mace_bronze
#> 259                                  Mace Iron               mace_iron
#> 260                                Mace Needle             mace_needle
#> 261                                Mace Silver             mace_silver
#> 262                     Mead Base Frost Resist     meadbasefrostresist
#> 263                    Mead Base Health Medium   meadbasehealth_medium
#> 264                     Mead Base Health Minor          meadbasehealth
#> 265                    Mead Base Poison Resist    meadbasepoisonresist
#> 266                   Mead Base Stamina Medium  meadbasestamina_medium
#> 267                    Mead Base Stamina Minor         meadbasestamina
#> 268                            Mead Base Tasty           meadbasetasty
#> 269                          Mead Frost Resist           mead_frostres
#> 270                         Mead Health Medium          mead_hp_medium
#> 271                          Mead Health Minor           mead_hp_minor
#> 272                         Mead Poison Resist          mead_poisonres
#> 273                        Mead Stamina Medium     mead_stamina_medium
#> 274                         Mead Stamina Minor      mead_stamina_minor
#> 275                                 Mead Tasty              mead_tasty
#> 276                           Mince Meat Sauce          mincemeatsauce
#> 277                                   Mushroom          mushroomcommon
#> 278                              Mushroom Blue            mushroomblue
#> 279                            Mushroom Yellow          mushroomyellow
#> 280                          Neck_ Bite Attack                    jaws
#> 281                                  Neck Tail                necktail
#> 282                          Neck Tail Grilled         necktailgrilled
#> 283                                     Needle                  needle
#> 284                                   Obsidian                obsidian
#> 285                                      Onion                   onion
#> 286                                Onion Seeds              onionseeds
#> 287                                 Onion Soup               onionsoup
#> 288                                       Ooze                    ooze
#> 289                             Pickaxe Antler          pickaxe_antler
#> 290                             Pickaxe Bronze          pickaxe_bronze
#> 291                               Pickaxe Iron            pickaxe_iron
#> 292                              Pickaxe Stone           pickaxe_stone
#> 293                                  Pine Cone                pinecone
#> 294                             Player Unarmed                 Unarmed
#> 295                                Pukeberries             pukeberries
#> 296                                  Queen Bee                queenbee
#> 297                                 Queens Jam               queensjam
#> 298                                  Raspberry             raspberries
#> 299                                   Raw Meat               boar_meat
#> 300                                      Resin                   resin
#> 301                                       Root                    root
#> 302                                Rotten Meat             meat_rotten
#> 303                                  Round Log                roundlog
#> 304                                       Ruby                    ruby
#> 305                                 Saddle Lox               saddlelox
#> 306                                   Sausages                sausages
#> 307                             Serpent_attack            Serpent bite
#> 308                              Serpent_taunt           Serpent Taunt
#> 309                               Serpent Meat             serpentmeat
#> 310                        Serpent Meat Cooked       serpentmeatcooked
#> 311                              Serpent Scale            serpentscale
#> 312                               Serpent Stew             serpentstew
#> 313                           Sharpening Stone         sharpeningstone
#> 314                              Shield Banded           shield_banded
#> 315                          Shield Blackmetal       shield_blackmetal
#> 316                    Shield Blackmetal Tower shield_blackmetal_tower
#> 317                          Shield Bone Tower        shield_bonetower
#> 318                      Shield Bronze Buckler    shield_bronzebuckler
#> 319                        Shield Iron Buckler      shield_ironbuckler
#> 320                         Shield Iron Square      shield_iron_square
#> 321                          Shield Iron Tower       shield_iron_tower
#> 322                              Shield Knight           Knight shield
#> 323                        Shield Serpentscale     shield_serpentscale
#> 324                              Shield Silver           shield_silver
#> 325                                Shield Wood             shield_wood
#> 326                          Shield Wood Tower        shield_woodtower
#> 327                         Shocklate Smoothie       shocklatesmoothie
#> 328                                     Silver                  silver
#> 329                            Silver Necklace          silvernecklace
#> 330                                 Silver Ore               silverore
#> 331                               skeleton_bow                     Bow
#> 332                              skeleton_mace              Dragur axe
#> 333                             skeleton_sword              Dragur axe
#> 334                               Sledge Cheat            Cheat sledge
#> 335                                Sledge Iron             sledge_iron
#> 336                         Sledge Stagbreaker             stagbreaker
#> 337                               Spear Bronze            spear_bronze
#> 338                               Spear Chitin            spear_chitin
#> 339                            Spear Elderbark       spear_ancientbark
#> 340                                Spear Flint             spear_flint
#> 341                            Spear Wolf Fang          spear_wolffang
#> 342                 Stamina Upgrade_ Greydwarf       Stamina Greydwarf
#> 343                     Stamina Upgrade_ Troll           Stamina Troll
#> 344                    Stamina Upgrade_ Wraith          Stamina Wraith
#> 345                                      Stone                   stone
#> 346              stonegolem_attack_doublesmash                    slap
#> 347 stonegolem_attack_sonicboom_ N O T U S E D                    slap
#> 348                   stonegolem_attack1_spike            Spike attack
#> 349         stonegolem_attack2_left_groundslam    One hand ground slam
#> 350              stonegolem_attack3_spikesweep             Spike sweep
#> 351                          Stone Golem_clubs                        
#> 352                            Stone Golem_hat                        
#> 353                         Stone Golem_spikes                        
#> 354                              Surtling Core            surtlingcore
#> 355                           Sword Blackmetal        sword_blackmetal
#> 356                               Sword Bronze            sword_bronze
#> 357                                Sword Cheat             Cheat sword
#> 358                                 Sword Iron              sword_iron
#> 359                            Sword Iron Fire              sword_fire
#> 360                               Sword Silver            sword_silver
#> 361                                    Tankard                 tankard
#> 362                        Tankard Anniversary     tankard_anniversary
#> 363                               Tankard Odin            tankard_odin
#> 364                                        Tar                     tar
#> 365                           tentaroot_attack              Dragur axe
#> 366                                    Thistle                 thistle
#> 367                               Thunderstone            thunderstone
#> 368                                        Tin                     tin
#> 369                                    Tin Ore                  tinore
#> 370                                      Torch                   torch
#> 371                           troll_groundslam                    slap
#> 372                          troll_log_swing_h                     LOG
#> 373                          troll_log_swing_v                     LOG
#> 374                                troll_punch                    slap
#> 375                                troll_throw          fireballattack
#> 376                                 Troll Hide               trollhide
#> 377                         Trophy Abomination      trophy_abomination
#> 378                                Trophy Blob             trophy_blob
#> 379                                Trophy Boar             trophy_boar
#> 380                            Trophy Bonemass         trophy_bonemass
#> 381                             Trophy Cultist          trophy_cultist
#> 382                         Trophy Deathsquito      trophy_deathsquito
#> 383                                Trophy Deer             trophy_deer
#> 384                        Trophy Dragon Queen      trophy_dragonqueen
#> 385                              Trophy Draugr           trophy_draugr
#> 386                        Trophy Draugr Elite      trophy_draugrelite
#> 387                          Trophy Draugr Fem           trophy_draugr
#> 388                             Trophy Eikthyr          trophy_eikthyr
#> 389                             Trophy Fenring          trophy_fenring
#> 390                        Trophy Forest Troll            trophy_troll
#> 391                         Trophy Frost Troll            trophy_troll
#> 392                              Trophy Goblin           trophy_goblin
#> 393                        Trophy Goblin Brute      trophy_goblinbrute
#> 394                         Trophy Goblin King       trophy_goblinking
#> 395                       Trophy Goblin Shaman     trophy_goblinshaman
#> 396                           Trophy Greydwarf        trophy_greydwarf
#> 397                     Trophy Greydwarf Brute   trophy_greydwarfbrute
#> 398                    Trophy Greydwarf Shaman  trophy_greydwarfshaman
#> 399                              Trophy Growth           trophy_growth
#> 400                           Trophy Hatchling        trophy_hatchling
#> 401                               Trophy Leech            trophy_leech
#> 402                                 Trophy Lox              trophy_lox
#> 403                                Trophy Neck             trophy_neck
#> 404                             Trophy Serpent          trophy_serpent
#> 405                             Trophy S Golem           trophy_sgolem
#> 406                            Trophy Skeleton         trophy_skeleton
#> 407                     Trophy Skeleton Poison   trophy_skeletonpoison
#> 408                            Trophy Surtling         trophy_surtling
#> 409                           Trophy The Elder            trophy_elder
#> 410                                 Trophy Ulv              trophy_ulv
#> 411                                Trophy Wolf             trophy_wolf
#> 412                              Trophy Wraith           trophy_wraith
#> 413                                     Turnip                  turnip
#> 414                               Turnip Seeds             turnipseeds
#> 415                                Turnip Stew              turnipstew
#> 416                           Ulv_attack1_bite             Bite Attack
#> 417                          Ulv_attack2_slash            Slash Attack
#> 418                   Vegvisir Shard_ Bonemass           Yagluth thing
#> 419                                   Wishbone                wishbone
#> 420                              Withered Bone            witheredbone
#> 421                              Wolf_ Attack1             WolfAttack1
#> 422                              Wolf_ Attack2             WolfAttack2
#> 423                              Wolf_ Attack3             WolfAttack3
#> 424                                  Wolf Claw                wolfclaw
#> 425                                  Wolf Fang                wolffang
#> 426                           Wolf Hair Bundle          wolfhairbundle
#> 427                                 Wolf Jerky               wolfjerky
#> 428                                  Wolf Meat               wolf_meat
#> 429                           Wolf Meat Skewer             wolf_skewer
#> 430                                  Wolf Pelt                wolfpelt
#> 431                                       Wood                    wood
#> 432                               wraith_melee            Wraith melee
#> 433                               Yagluth Drop           Yagluth thing
#> 434                               Ymir Remains             ymirremains
#>                                  name              type
#> 1                        Swing attack One Handed Weapon
#> 2                         Slam attack One Handed Weapon
#> 3                  Stub to the ground One Handed Weapon
#> 4                              Acorns          Material
#> 5                               Amber          Material
#> 6                         Amber pearl          Material
#> 7                        Ancient seed          Material
#> 8                Bronze plate cuirass             Chest
#> 9               Bronze plate leggings              Legs
#> 10                        Fenris coat             Chest
#> 11                    Fenris leggings              Legs
#> 12                    Iron scale mail             Chest
#> 13                       Iron greaves              Legs
#> 14                      Leather tunic             Chest
#> 15                      Leather pants              Legs
#> 16                     Padded cuirass             Chest
#> 17                     Padded greaves              Legs
#> 18                          Rag tunic             Chest
#> 19                          Rag pants              Legs
#> 20                       Root harnesk             Chest
#> 21                      Root leggings              Legs
#> 22                Troll leather tunic             Chest
#> 23                Troll leather pants              Legs
#> 24                   Wolf armor chest             Chest
#> 25                    Wolf armor legs              Legs
#> 26                   Bronzehead arrow              Ammo
#> 27                         Fire arrow              Ammo
#> 28                    Flinthead arrow              Ammo
#> 29                        Frost arrow              Ammo
#> 30                     Ironhead arrow              Ammo
#> 31                       Needle arrow              Ammo
#> 32                     Obsidian arrow              Ammo
#> 33                       Poison arrow              Ammo
#> 34                       Silver arrow              Ammo
#> 35                         Wood arrow              Ammo
#> 36                  Blackmetal atgeir Two Handed Weapon
#> 37                      Bronze atgeir Two Handed Weapon
#> 38                        Iron atgeir Two Handed Weapon
#> 39                     Blackmetal axe One Handed Weapon
#> 40                         Bronze axe One Handed Weapon
#> 41                          Flint axe One Handed Weapon
#> 42                           Iron axe One Handed Weapon
#> 43                          Stone axe One Handed Weapon
#> 44                             Barley          Material
#> 45                       Barley flour          Material
#> 46        Fire resistance barley wine        Consumable
#> 47  Barley wine base: Fire resistance          Material
#> 48                          Bat melee One Handed Weapon
#> 49                          Battleaxe Two Handed Weapon
#> 50                  Crystal battleaxe Two Handed Weapon
#> 51                             Long 1     Customization
#> 52                          Braided 4     Customization
#> 53                             Long 2     Customization
#> 54                            Short 1     Customization
#> 55                            Short 2     Customization
#> 56                          Braided 1     Customization
#> 57                          Braided 2     Customization
#> 58                            Short 3     Customization
#> 59                            Thick 1     Customization
#> 60                          Braided 3     Customization
#> 61                           No beard     Customization
#> 62                        Beech seeds          Material
#> 63                         Megingjord           Utility
#> 64                        Birch seeds          Material
#> 65                        Black metal          Material
#> 66                  Black metal scrap          Material
#> 67                         Black soup        Consumable
#> 68                               fart One Handed Weapon
#> 69                               fart One Handed Weapon
#> 70                     fireballattack One Handed Weapon
#> 71                           Bloodbag          Material
#> 72                      Blood pudding        Consumable
#> 73                        Blueberries        Consumable
#> 74                       boar attack1 One Handed Weapon
#> 75                         Boar jerky        Consumable
#> 76                          Ooze bomb One Handed Weapon
#> 77                     Bone fragments          Material
#> 78                               heal One Handed Weapon
#> 79                               slap One Handed Weapon
#> 80                               heal One Handed Weapon
#> 81                        slime throw One Handed Weapon
#> 82                          Crude bow               Bow
#> 83                        Draugr fang               Bow
#> 84                       Finewood bow               Bow
#> 85                       Huntsman bow               Bow
#> 86                              Bread        Consumable
#> 87                        Bread dough          Material
#> 88                             Bronze          Material
#> 89                       Bronze nails          Material
#> 90                     Deer hide cape          Shoulder
#> 91                         Linen cape          Shoulder
#> 92                           Lox cape          Shoulder
#> 93                       Cape of Odin          Shoulder
#> 94                          CAPE TEST          Shoulder
#> 95                    Troll hide cape          Shoulder
#> 96                      Wolf fur cape          Shoulder
#> 97                             Carrot        Consumable
#> 98                       Carrot seeds          Material
#> 99                        Carrot soup        Consumable
#> 100                             Chain          Material
#> 101                            Chitin          Material
#> 102                      Cloudberries        Consumable
#> 103                              Club One Handed Weapon
#> 104                              Coal          Material
#> 105                             Coins          Material
#> 106                  Cooked deer meat        Consumable
#> 107                   Cooked lox meat        Consumable
#> 108                  Cooked boar meat        Consumable
#> 109                  Cooked wolf meat        Consumable
#> 110                            Copper          Material
#> 111                        Copper ore          Material
#> 112                         Swamp key              Misc
#> 113                           Crystal          Material
#> 114                        Cultivator              Tool
#> 115                         Dandelion          Material
#> 116                      Wraith melee One Handed Weapon
#> 117                         Deer hide          Material
#> 118                         Deer meat          Material
#> 119                         Deer stew        Consumable
#> 120                  Dragon claw left One Handed Weapon
#> 121                  Dragon claw left One Handed Weapon
#> 122                  Dragon claw left One Handed Weapon
#> 123                     dragon breath One Handed Weapon
#> 124                     dragon breath One Handed Weapon
#> 125                         cold ball One Handed Weapon
#> 126                            scream One Handed Weapon
#> 127                        Dragon egg              Misc
#> 128                       Dragon tear          Material
#> 129                    Ironhead arrow              Ammo
#> 130                        Dragur axe One Handed Weapon
#> 131                               Bow               Bow
#> 132                        Dragur axe One Handed Weapon
#> 133                       StagAttack1 One Handed Weapon
#> 134                       StagAttack2 One Handed Weapon
#> 135                       StagAttack1 One Handed Weapon
#> 136                              slap One Handed Weapon
#> 137                      Ancient bark          Material
#> 138                          Entrails          Material
#> 139                         Eyescream        Consumable
#> 140                          Feathers          Material
#> 141                              claw One Handed Weapon
#> 142                              claw One Handed Weapon
#> 143                              claw One Handed Weapon
#> 144            Fenring cultist flames One Handed Weapon
#> 145                              claw One Handed Weapon
#> 146                            scream One Handed Weapon
#> 147                         Fine wood          Material
#> 148                          Fir cone          Material
#> 149                       Cooked fish        Consumable
#> 150                      Fishing bait              Ammo
#> 151                       Fishing rod Two Handed Weapon
#> 152                          Raw fish          Material
#> 153                        Fish wraps        Consumable
#> 154                     Flesh rippers Two Handed Weapon
#> 155                          Flametal          Material
#> 156                      Flametal ore          Material
#> 157                              Flax          Material
#> 158                             Flint          Material
#> 159                      Freeze gland          Material
#> 160                              jaws One Handed Weapon
#> 161                             spawn One Handed Weapon
#> 162                            scream One Handed Weapon
#> 163                     shaman attack One Handed Weapon
#> 164                              jaws One Handed Weapon
#> 165                              jaws One Handed Weapon
#> 166                  Iron plate armor             Chest
#> 167                  Iron plate armor             Chest
#> 168                       Brute sword One Handed Weapon
#> 169                  Iron plate armor            Helmet
#> 170                  Iron plate armor            Helmet
#> 171                  Iron plate armor              Legs
#> 172                  Iron plate armor           Utility
#> 173                       Brute sword One Handed Weapon
#> 174                  Iron plate armor          Shoulder
#> 175                       Brute taunt One Handed Weapon
#> 176                              Club One Handed Weapon
#> 177                  Iron plate armor             Chest
#> 178                     dragon breath One Handed Weapon
#> 179                             spawn One Handed Weapon
#> 180                              slap One Handed Weapon
#> 181                            scream One Handed Weapon
#> 182                  Iron plate armor             Chest
#> 183                  Iron plate armor              Legs
#> 184                    fireballattack One Handed Weapon
#> 185                              Club One Handed Weapon
#> 186                              heal One Handed Weapon
#> 187                              Club            Helmet
#> 188                              Club            Helmet
#> 189                              Club           Utility
#> 190                              Club           Utility
#> 191                  Iron plate armor             Chest
#> 192                       Flint spear One Handed Weapon
#> 193                      Bronze sword One Handed Weapon
#> 194                             Torch One Handed Weapon
#> 195                      Fuling totem              Misc
#> 196                              jaws One Handed Weapon
#> 197                              jaws One Handed Weapon
#> 198                     shaman attack One Handed Weapon
#> 199                              heal One Handed Weapon
#> 200                       throw stone One Handed Weapon
#> 201                     Greydwarf eye          Material
#> 202                              jaws One Handed Weapon
#> 203                              Guck          Material
#> 204                        Ponytail 1     Customization
#> 205                      Side Swept 2     Customization
#> 206                         Braided 2     Customization
#> 207                         Braided 3     Customization
#> 208                         Braided 4     Customization
#> 209                      Side Swept 3     Customization
#> 210                        Ponytail 2     Customization
#> 211                         Braided 1     Customization
#> 212                        Ponytail 3     Customization
#> 213                           Short 1     Customization
#> 214                            Long 1     Customization
#> 215                        Ponytail 4     Customization
#> 216                           Short 2     Customization
#> 217                      Side Swept 1     Customization
#> 218                           No hair     Customization
#> 219                            Hammer              Tool
#> 220                       Hard antler          Material
#> 221                         cold ball One Handed Weapon
#> 222                    Bonemass heart        Consumable
#> 223                       Elder heart        Consumable
#> 224                     Bronze helmet            Helmet
#> 225                      Drake helmet            Helmet
#> 226                   Dverger circlet            Helmet
#> 227                       Fenris hood            Helmet
#> 228                       Iron helmet            Helmet
#> 229                    Leather helmet            Helmet
#> 230                      Hood of Odin            Helmet
#> 231                     Padded helmet            Helmet
#> 232                         Root mask            Helmet
#> 233              Troll leather helmet            Helmet
#> 234                          Yule hat            Helmet
#> 235                               Hoe              Tool
#> 236                             Honey        Consumable
#> 237                    fireballattack One Handed Weapon
#> 238                              Iron          Material
#> 239                        Iron nails          Material
#> 240                          Iron ore          Material
#> 241                        Scrap iron          Material
#> 242                          Red jute          Material
#> 243                  Blackmetal knife One Handed Weapon
#> 244                     Butcher knife One Handed Weapon
#> 245                     Abyssal razor One Handed Weapon
#> 246                      Copper knife One Handed Weapon
#> 247                       Flint knife One Handed Weapon
#> 248                      Silver knife One Handed Weapon
#> 249                    Leather scraps          Material
#> 250                              jaws One Handed Weapon
#> 251                      Linen thread          Material
#> 252                          lox bite One Handed Weapon
#> 253                              slap One Handed Weapon
#> 254                          Lox meat          Material
#> 255                          Lox pelt          Material
#> 256                      Lox meat pie        Consumable
#> 257                   Unbaked lox pie          Material
#> 258                       Bronze mace One Handed Weapon
#> 259                         Iron mace One Handed Weapon
#> 260                         Porcupine One Handed Weapon
#> 261                          Frostner One Handed Weapon
#> 262       Mead base: Frost resistance          Material
#> 263         Mead base: Medium healing          Material
#> 264          Mead base: Minor healing          Material
#> 265      Mead base: Poison resistance          Material
#> 266         Mead base: Medium stamina          Material
#> 267          Mead base: Minor stamina          Material
#> 268                  Mead base: Tasty          Material
#> 269             Frost resistance mead        Consumable
#> 270               Medium healing mead        Consumable
#> 271                Minor healing mead        Consumable
#> 272            Poison resistance mead        Consumable
#> 273               Medium stamina mead        Consumable
#> 274                Minor stamina mead        Consumable
#> 275                        Tasty mead        Consumable
#> 276                 Minced Meat Sauce        Consumable
#> 277                          Mushroom        Consumable
#> 278                     Blue mushroom        Consumable
#> 279                   Yellow mushroom        Consumable
#> 280                              jaws One Handed Weapon
#> 281                         Neck tail          Material
#> 282                 Grilled Neck tail        Consumable
#> 283                            Needle          Material
#> 284                          Obsidian          Material
#> 285                             Onion        Consumable
#> 286                       Onion seeds          Material
#> 287                        Onion soup        Consumable
#> 288                              Ooze          Material
#> 289                    Antler pickaxe Two Handed Weapon
#> 290                    Bronze pickaxe Two Handed Weapon
#> 291                      Iron pickaxe Two Handed Weapon
#> 292                     Stone pickaxe Two Handed Weapon
#> 293                         Pine cone          Material
#> 294                           Unarmed One Handed Weapon
#> 295                       Bukeperries        Consumable
#> 296                         Queen bee          Material
#> 297                        Queens jam        Consumable
#> 298                       Raspberries        Consumable
#> 299                         Boar meat          Material
#> 300                             Resin          Material
#> 301                              Root          Material
#> 302                       Rotten meat        Consumable
#> 303                         Core wood          Material
#> 304                              Ruby          Material
#> 305                        Lox saddle              Misc
#> 306                          Sausages        Consumable
#> 307                      Serpent bite One Handed Weapon
#> 308                     Serpent Taunt One Handed Weapon
#> 309                      Serpent meat          Material
#> 310               Cooked serpent meat        Consumable
#> 311                     Serpent scale          Material
#> 312                      Serpent stew        Consumable
#> 313                  Sharpening stone          Material
#> 314                     Banded shield            Shield
#> 315                Black metal shield            Shield
#> 316          Black metal tower shield            Shield
#> 317                 Bone tower shield            Shield
#> 318                    Bronze buckler            Shield
#> 319                      Iron buckler            Shield
#> 320                       Iron shield            Shield
#> 321                 Iron tower shield            Shield
#> 322                     Knight shield            Shield
#> 323              Serpent scale shield            Shield
#> 324                     Silver shield            Shield
#> 325                       Wood shield            Shield
#> 326                 Wood tower shield            Shield
#> 327                         Muckshake        Consumable
#> 328                            Silver          Material
#> 329                   Silver Necklace          Material
#> 330                        Silver ore          Material
#> 331                               Bow               Bow
#> 332                        Dragur axe One Handed Weapon
#> 333                        Dragur axe One Handed Weapon
#> 334                      Cheat sledge Two Handed Weapon
#> 335                       Iron sledge Two Handed Weapon
#> 336                       Stagbreaker Two Handed Weapon
#> 337                      Bronze spear One Handed Weapon
#> 338                   Abyssal harpoon One Handed Weapon
#> 339                Ancient bark spear One Handed Weapon
#> 340                       Flint spear One Handed Weapon
#> 341                        Fang spear One Handed Weapon
#> 342                 Stamina Greydwarf        Consumable
#> 343                     Stamina Troll        Consumable
#> 344                    Stamina Wraith        Consumable
#> 345                             Stone          Material
#> 346                              slap One Handed Weapon
#> 347                              slap One Handed Weapon
#> 348                      Spike attack One Handed Weapon
#> 349              One hand ground slam One Handed Weapon
#> 350                       Spike sweep One Handed Weapon
#> 351                              NULL             Chest
#> 352                              NULL            Helmet
#> 353                              NULL             Chest
#> 354                     Surtling core          Material
#> 355                  Blackmetal sword One Handed Weapon
#> 356                      Bronze sword One Handed Weapon
#> 357                       Cheat sword One Handed Weapon
#> 358                        Iron sword One Handed Weapon
#> 359                           Dyrnwyn One Handed Weapon
#> 360                      Silver sword One Handed Weapon
#> 361                           Tankard One Handed Weapon
#> 362               Horn of Celebration One Handed Weapon
#> 363                 Mead horn of Odin One Handed Weapon
#> 364                               Tar          Material
#> 365                        Dragur axe One Handed Weapon
#> 366                           Thistle          Material
#> 367                     Thunder stone          Material
#> 368                               Tin          Material
#> 369                           Tin ore          Material
#> 370                             Torch             Torch
#> 371                              slap One Handed Weapon
#> 372                               LOG One Handed Weapon
#> 373                               LOG One Handed Weapon
#> 374                              slap One Handed Weapon
#> 375                    fireballattack One Handed Weapon
#> 376                        Troll hide          Material
#> 377                Abomination trophy           Trophie
#> 378                       Blob trophy           Trophie
#> 379                       Boar trophy           Trophie
#> 380                   Bonemass trophy           Trophie
#> 381                    Cultist trophy           Trophie
#> 382                Deathsquito trophy           Trophie
#> 383                       Deer trophy           Trophie
#> 384                      Moder trophy           Trophie
#> 385                     Draugr trophy           Trophie
#> 386               Draugr Elite trophy           Trophie
#> 387                     Draugr trophy           Trophie
#> 388                    Eikthyr trophy           Trophie
#> 389                    Fenring trophy           Trophie
#> 390                      Troll trophy           Trophie
#> 391                      Troll trophy           Trophie
#> 392                     Fuling trophy           Trophie
#> 393           Fuling berserker trophy           Trophie
#> 394                    Yagluth trophy           Trophie
#> 395              Fuling shaman trophy           Trophie
#> 396                  Greydwarf trophy           Trophie
#> 397            Greydwarf Brute trophy           Trophie
#> 398           Greydwarf Shaman trophy           Trophie
#> 399                     Growth trophy           Trophie
#> 400                      Drake trophy           Trophie
#> 401                      Leech trophy           Trophie
#> 402                        Lox trophy           Trophie
#> 403                       Neck trophy           Trophie
#> 404                    Serpent trophy           Trophie
#> 405                Stone Golem trophy           Trophie
#> 406                   Skeleton trophy           Trophie
#> 407             Rancid remains trophy           Trophie
#> 408                   Surtling trophy           Trophie
#> 409                  The Elder trophy           Trophie
#> 410                        Ulv trophy           Trophie
#> 411                       Wolf trophy           Trophie
#> 412                     Wraith trophy           Trophie
#> 413                            Turnip          Material
#> 414                      Turnip seeds          Material
#> 415                       Turnip stew        Consumable
#> 416                       Bite Attack One Handed Weapon
#> 417                      Slash Attack One Handed Weapon
#> 418                     Yagluth thing          Material
#> 419                          Wishbone           Utility
#> 420                     Withered bone          Material
#> 421                       WolfAttack1 One Handed Weapon
#> 422                       WolfAttack2 One Handed Weapon
#> 423                       WolfAttack3 One Handed Weapon
#> 424                       Fenris claw          Material
#> 425                         Wolf fang          Material
#> 426                       Fenris hair          Material
#> 427                        Wolf jerky        Consumable
#> 428                         Wolf meat          Material
#> 429                       Wolf skewer        Consumable
#> 430                         Wolf pelt          Material
#> 431                              Wood          Material
#> 432                      Wraith melee One Handed Weapon
#> 433                     Yagluth thing          Material
#> 434                        Ymir flesh          Material
#>                                                                                                        description
#> 1                                                                                                             NULL
#> 2                                                                                                             NULL
#> 3                                                                                                             NULL
#> 4                                                                                  Plant them to grow an oak tree.
#> 5                                                                                                         Valuable
#> 6                                                                                                         Valuable
#> 7                                                       Held against your ear, you hear tiny whisperings within...
#> 8                                                                                A breastplate of hammered bronze.
#> 9                                                                              Bronze greaves to shield your legs.
#> 10                         The beast could draw deep breaths, so that its howl could be heard far across the land.
#> 11                                 The legs of the beast was lean and strong, so that it could leap great strides.
#> 12                                              An iron scale mail, this will turn all but the strongest of blows.
#> 13                                                                              Iron greaves to protect your legs.
#> 14                                                                                  A tunic made from animal hide.
#> 15                                                                             They squeak a little when you walk.
#> 16                                              Finely wrought and strong enough to turn even the sharpest blades.
#> 17                                                                                Expertly crafted leg protection.
#> 18                                                                                            Better than nothing.
#> 19                                                                                     A simple remedy for nudity.
#> 20                                              Finely wrought and strong enough to turn even the sharpest blades.
#> 21                                                   A light armor oddly woven together by ancient roots and bark.
#> 22                                                    Trolls are hard to skin but their leather is tough and warm.
#> 23                                                                                   Leggings of tough troll hide.
#> 24                                         A wolfskin jerkin, warm and wild-looking. It protects against the cold.
#> 25                                                                                    Shaggy breeches of wolfskin.
#> 26                                                                 Sharper than flint, a sleek messenger of death.
#> 27                                                                           This arrow burns whatever it pierces.
#> 28                                                                            A hide-breaker with a head of flint.
#> 29                                                                                        A shard of piercing ice.
#> 30                                                               Capped with iron and flighted with dark feathers.
#> 31                                                                                               The final stitch.
#> 32                                                                                           A sliver of darkness.
#> 33                                                                                       A bitter sting from afar.
#> 34                                                                              A needle to calm restless spirits.
#> 35                                                                                     An arrow of sharpened wood.
#> 36                                                         A vicious hewing-axe of almost unbreakable black metal.
#> 37                                                                                          A true warrior's tool.
#> 38                                                                    Blood-drinker, skull-cracker, death-bringer.
#> 39                                          A perfectly-balanced axe forged from dark metal with an emerald sheen.
#> 40                                                              A bright and burnished blade, curved like a smile.
#> 41                                                                                             Sharper than stone.
#> 42                                                                        Sharp and strong, a woodcutter's friend.
#> 43                                                                                   A crude axe for tree-felling.
#> 44                                                                                             A bundle of barley.
#> 45                                                                                         Great for baking bread.
#> 46                                                                                     Fortifies you against fire.
#> 47                                                                                          Needs to be fermented.
#> 48                                                                                                            NULL
#> 49                                                                                Skull-splitter, a warrior's joy.
#> 50                                                                             It's see-through and tears through.
#> 51                                                                                                            NULL
#> 52                                                                                                            NULL
#> 53                                                                                                            NULL
#> 54                                                                                                            NULL
#> 55                                                                                                            NULL
#> 56                                                                                                            NULL
#> 57                                                                                                            NULL
#> 58                                                                                                            NULL
#> 59                                                                                                            NULL
#> 60                                                                                                            NULL
#> 61                                                                                                            NULL
#> 62                                                                                Plant them to grow a beech tree.
#> 63                                                                           Gives the wearer superhuman strength.
#> 64                                                                                Plant them to grow a birch tree.
#> 65                                                                                      A heavy bar of dark metal.
#> 66                                                                                   A twisted hunk of dark metal.
#> 67                                                                     A perfect balance of sweetness and acidity.
#> 68                                                                                                            NULL
#> 69                                                                                                            NULL
#> 70                                                                                                            NULL
#> 71                                                                                   The contents of a leech. Ick!
#> 72                                                                                              It's bloody tasty.
#> 73                                                                                                 Tiny but tasty.
#> 74                                                                                                            NULL
#> 75                                                                                                 Lean and salty.
#> 76                                                                                     The stench is unbearable...
#> 77                                                                                      A pile of shattered bones.
#> 78                                                                                                            NULL
#> 79                                                                                                            NULL
#> 80                                                                                                            NULL
#> 81                                                                                                            NULL
#> 82                                                                                     A crude but functional bow.
#> 83                                                        Dark wood strung with glistening sinew, a vicious thing.
#> 84                                                                         A simple bow of strong and supple wood.
#> 85                                                                     Finely worked and strung, a huntsman's joy.
#> 86                                                                                          A tasty loaf of bread.
#> 87                                                                                             Ready for the oven.
#> 88                                                                               A strong alloy of copper and tin.
#> 89                                                                    Used in construction of ships and furniture.
#> 90                                                                                                    Rustic chic.
#> 91                                                                                       A simple traveler's cape.
#> 92                                                            A pelt from one of the great beasts, thick and warm.
#> 93                                                                Odin's finest warriors deserve the finest cloth.
#> 94                                                                                                         Da cape
#> 95                                                                                  Trollskin is tough and supple.
#> 96                Wolves are natural survivors. This one was just unlucky. Now its pelt will warm you in the snow.
#> 97                                                                                                An orange treat.
#> 98                                                                              Plant these if you like carrots...
#> 99                                                                       A warm tasty soup made of mostly carrots.
#> 100                                                                                          A link of iron chain.
#> 101                                                                                   A shard of crustacean shell.
#> 102                                                                                        The gold of the forest.
#> 103                                                                                     A crude but useful weapon.
#> 104                                                                                                A lump of coal.
#> 105                                                                                                       Valuable
#> 106                                                                                     All that running paid off.
#> 107                                                            A great hunk of tender meat, food fit for Valhalla!
#> 108                                                                                              An earthly taste.
#> 109                                                                                                  A wild taste.
#> 110                                                                       A bar of pure copper ready to be worked.
#> 111                                                            Unrefined copper. Needs to be refined in a smelter.
#> 112                                                                 Partly covered in caked mud, it smells foetid.
#> 113                                                                 A shard of crystal from deep within the earth.
#> 114                                                                               A farming tool for tilling soil.
#> 115                                                                                                   A dandelion.
#> 116                                                                                                           NULL
#> 117                                                                                    A cleaned hide from a deer.
#> 118                                                                                                               
#> 119                                                                                             Fall-apart tender.
#> 120                                                                                                           NULL
#> 121                                                                                                           NULL
#> 122                                                                                                           NULL
#> 123                                                                                                           NULL
#> 124                                                                                                           NULL
#> 125                                                                                                           NULL
#> 126                                                                                                           NULL
#> 127                                             Far heavier than it looks, with a faint humming sound from within.
#> 128                                           The last frozen tears of a dragon, pulsating with mysterious energy.
#> 129                                                                                            Fire it with a bow.
#> 130                                                                                                           NULL
#> 131                                                                                                  A simple bow.
#> 132                                                                                                           NULL
#> 133                                                                                                           NULL
#> 134                                                                                                           NULL
#> 135                                                                                                           NULL
#> 136                                                                                                           NULL
#> 137                                                                                An ancient and sturdy material.
#> 138                                                                         A slimy length of something's insides.
#> 139                                                                                        Crispy cool and creamy.
#> 140                                                                                      A small pile of feathers.
#> 141                                                                                                           NULL
#> 142                                                                                                           NULL
#> 143                                                                                                           NULL
#> 144                                                                                                           NULL
#> 145                                                                                                           NULL
#> 146                                                                                                           NULL
#> 147                                                                          High quality wood for fine carpentry.
#> 148                                                                                   Plant it to grow a fir tree.
#> 149                                                                                   A tasty side of smoked fish.
#> 150                                                       Common dvergr fishing bait. Fishing rod sold separately.
#> 151                                                                             Standard issue dvergr fishing rod.
#> 152                                                                                                  A good catch.
#> 153                                                                             Bread and fish, what more to wish?
#> 154                                                                If claws work for wolves, why not for a viking?
#> 155                                                                      The pure, shimmering core of a meteorite.
#> 156                       Warm to the touch with glowing veins of strange metal. Needs to be refined in a smelter.
#> 157                                                                               Unspun fibers from a flax plant.
#> 158                                                                               Can be shaped into sharp blades.
#> 159                                                             This mysterious organ keeps a perfect temperature.
#> 160                                                                                                           NULL
#> 161                                                                                                           NULL
#> 162                                                                                                           NULL
#> 163                                                                                                           NULL
#> 164                                                                                                           NULL
#> 165                                                                                                           NULL
#> 166                                             An iron scale mail, this will turn all but the strongest of blows.
#> 167                                             An iron scale mail, this will turn all but the strongest of blows.
#> 168                                                                                                           NULL
#> 169                                             An iron scale mail, this will turn all but the strongest of blows.
#> 170                                             An iron scale mail, this will turn all but the strongest of blows.
#> 171                                             An iron scale mail, this will turn all but the strongest of blows.
#> 172                                             An iron scale mail, this will turn all but the strongest of blows.
#> 173                                                                                                           NULL
#> 174                                             An iron scale mail, this will turn all but the strongest of blows.
#> 175                                                                                                           NULL
#> 176                                                                                     A crude but useful weapon.
#> 177                                             An iron scale mail, this will turn all but the strongest of blows.
#> 178                                                                                                           NULL
#> 179                                                                                                           NULL
#> 180                                                                                                           NULL
#> 181                                                                                                           NULL
#> 182                                             An iron scale mail, this will turn all but the strongest of blows.
#> 183                                             An iron scale mail, this will turn all but the strongest of blows.
#> 184                                                                                                           NULL
#> 185                                                                                     A crude but useful weapon.
#> 186                                                                                                           NULL
#> 187                                                                                     A crude but useful weapon.
#> 188                                                                                     A crude but useful weapon.
#> 189                                                                                     A crude but useful weapon.
#> 190                                                                                     A crude but useful weapon.
#> 191                                             An iron scale mail, this will turn all but the strongest of blows.
#> 192                                                                                  [item_spearflint_description]
#> 193                                                                               Blood-drinker, a thirsty friend.
#> 194                                                          It brings light and warmth, drives back the darkness.
#> 195                                                                         Channels the ancient power of Yagluth.
#> 196                                                                                                           NULL
#> 197                                                                                                           NULL
#> 198                                                                                                           NULL
#> 199                                                                                                           NULL
#> 200                                                                                                           NULL
#> 201                                                                              The milky eyeball of a Greydwarf.
#> 202                                                                                                           NULL
#> 203                                                                                 It smells like fermented fish.
#> 204                                                                                                           NULL
#> 205                                                                                                           NULL
#> 206                                                                                                           NULL
#> 207                                                                                                           NULL
#> 208                                                                                                           NULL
#> 209                                                                                                           NULL
#> 210                                                                                                           NULL
#> 211                                                                                                           NULL
#> 212                                                                                                           NULL
#> 213                                                                                                           NULL
#> 214                                                                                                           NULL
#> 215                                                                                                           NULL
#> 216                                                                                                           NULL
#> 217                                                                                                           NULL
#> 218                                                                                                           NULL
#> 219                                    With this to your hand, you can raise high halls and mighty fortifications.
#> 220                                                                                   A piece of very hard antler.
#> 221                                                                                                           NULL
#> 222                                                                               [item_healthupgrade_description]
#> 223                                                                               [item_healthupgrade_description]
#> 224                                                          This will help to keep your brains inside your skull.
#> 225                                                                          An elaborate and finely-crafted helm.
#> 226                                                     A portable perpetual lightsource for the dungeon explorer.
#> 227 The eyes of the beast were wise and knowing, so that it could measure the strength of a warrior in one glance.
#> 228                                                                       A helm of polished iron, fit for a hero.
#> 229                                                                                   A hood of toughened leather.
#> 230                                                               Odin's finest warriors deserve the finest cloth.
#> 231                                                                                       A snug fit, finely made.
#> 232                                                   Your head fits perfectly inside this knot of roots and bark.
#> 233                                                         Trollskin is hard to work but makes exceptional armor.
#> 234                                                                        A red cap in the style of house gnomes.
#> 235                                                                         A farmer's tool for working the earth.
#> 236                                                                                               Sweet and tasty.
#> 237                                                                                                           NULL
#> 238                                                                         A bar of pure iron ready to be worked.
#> 239                                                                     Needed for advanced construction projects.
#> 240                                                              Unrefined iron. Needs to be refined in a smelter.
#> 241                                                          It's old and rusty but can be smelted and used again.
#> 242                                                                                        A sturdy, rough fabric.
#> 243                                                                            A darkling blade, strong and sharp.
#> 244                                        A butcher's knife designed specifically for slaughtering tamed animals.
#> 245                                                                                         A knife from the deep.
#> 246                                                                                     A glittering copper knife.
#> 247                                                                              Sharpened flint, a reliable tool.
#> 248                                                                                        A savage piece of pain.
#> 249                                                                                A small pile of leather scraps.
#> 250                                                                                                           NULL
#> 251                                                          A fine linen thread made out of strong flax filament.
#> 252                                                                                                           NULL
#> 253                                                                                                           NULL
#> 254                                                                                    A raw slab of marbled meat.
#> 255                                                                              A heavy pelt of thick, musty fur.
#> 256                                               Break the crust to release a cloud of fragrant steam. Delicious!
#> 257                                                                                            Ready for the oven.
#> 258                                                                                         A headache on a stick.
#> 259                                                                   A fist-sized lump of iron on a wooden shaft.
#> 260                                                               A deadly weapon, bristling with fiendish spikes.
#> 261                                                                         The dead fear silver. Remind them why.
#> 262                                                                                         Needs to be fermented.
#> 263                                                                                         Needs to be fermented.
#> 264                                                                                         Needs to be fermented.
#> 265                                                                                         Needs to be fermented.
#> 266                                                                                         Needs to be fermented.
#> 267                                                                                         Needs to be fermented.
#> 268                                                                                         Needs to be fermented.
#> 269                                                                                     Protects against the cold.
#> 270                                                                                               Restores health.
#> 271                                                                                               Restores health.
#> 272                                                                                  Fortifies you against poison.
#> 273                                                                                              Restores stamina.
#> 274                                                                                              Restores stamina.
#> 275                                                                           The nectar of the gods, divine mead.
#> 276                                                                           Chunks of goodness in a thick gravy.
#> 277                                                                                          Bounty of the forest.
#> 278                                                                                    Glows with a soft blue hue.
#> 279                                                                                 An energetic glowing mushroom.
#> 280                                                                                                           NULL
#> 281                                             Inedible when raw, but proves to be quite a tasty snack if cooked.
#> 282                                   This savoury, charcoal-grilled meat has a slight aroma of seaweed and grass.
#> 283                                                                               The pointy end of a Deathsquito.
#> 284                                                                                           Dark volcanic glass.
#> 285                                                                                     A crunchy and spicy taste.
#> 286                                                                                 Plant to grow a healthy onion.
#> 287                                                                                              Deliciously rich.
#> 288                                                              Rotten and putrid-smelling. Why do you want this?
#> 289                                                This tool is hard enough to crack even the most stubborn rocks.
#> 290                                                                 A good bronze pick. Can break very hard rocks.
#> 291                                                                                A sturdy tool of hardened iron.
#> 292                                                                                  A rock-breaker made of stone.
#> 293                                                                                  Plant it to grow a pine tree.
#> 294                                                                                                           NULL
#> 295                                     Allows the consumer to quickly evacuate any misplaced meal and start anew.
#> 296                                                                                         The queen of the bees!
#> 297                                                       That classic tasty blend of raspberries and blueberries.
#> 298                                                                                           Sweet and delicious.
#> 299                                                                                                               
#> 300                           Sticky tree resin that insulates well. If put to the flame it burns slow and steady.
#> 301                   An old root from an ancient tree stump. It feels both flexible and durable at the same time.
#> 302                                                       There are maggots crawling in the meat. It smells awful.
#> 303                                                                               Perfect for building log cabins.
#> 304                                                                                                       Valuable
#> 305                                                                            Use on a Lox to be able to ride it.
#> 306                                                                                  Links of savory, smoked meat.
#> 307                                                                                                           NULL
#> 308                                                                                                           NULL
#> 309                                                                          A slice of sea serpent, smells fishy.
#> 310                                                                    A cooked slice of sea serpent, smells good.
#> 311                                                                 The shiny metal-like scale from a sea serpent.
#> 312                                                                                 Smells of honey and serpent...
#> 313                                                                               A whetstone wheel ready to spin.
#> 314                                                         Banded with hoops of iron, a true warrior's companion.
#> 315                                    Fashioned from the strongest metal, able to turn even the deadliest blades.
#> 316                                                                         A tower shield of gleaming dark metal.
#> 317                                                          The bones of dead warriors makes for good protection.
#> 318                                                     A shield of burnished bronze, good to turn a blade or two.
#> 319                                     Its lightness and curved center makes it excellent for deflecting attacks.
#> 320                                                                An iron sword-breaker, tile of the battle-wall.
#> 321                                                                                  A tall shield of strong iron.
#> 322                                                                          A wooden shield reinforced with iron.
#> 323                                                                         A sturdy shield of overlapping scales.
#> 324                                                                                    A shield of radiant silver.
#> 325                                                                                        A simple wooden shield.
#> 326                                                                               A rough but heavy wooden shield.
#> 327                                                                                                  Wakes you up!
#> 328                                                                       A bar of pure silver ready to be worked.
#> 329                                                                                                       Valuable
#> 330                                                            Unrefined silver. Needs to be refined in a smelter.
#> 331                                                                                                  A simple bow.
#> 332                                                                                                           NULL
#> 333                                                                                                           NULL
#> 334                                                                                                       Cheater!
#> 335                                                                         A mighty hammer, worthy of a champion.
#> 336                                       A weapon worthy of the gods! If you get hit with this, you'll know it...
#> 337                                                                A sturdy spear with a head of burnished bronze.
#> 338                                                                                             The ocean's wrath.
#> 339                                         Despite its gnarled look, this spear is strong and perfectly balanced.
#> 340                                          If your eye marks a thing for death, let your arm send the messenger.
#> 341                                                               Even in death, the wolf's tooth aches for flesh.
#> 342                                                                              [item_staminaupgrade_description]
#> 343                                                                              [item_staminaupgrade_description]
#> 344                                                                              [item_staminaupgrade_description]
#> 345                                                                                                   It's a rock.
#> 346                                                                                                           NULL
#> 347                                                                                                           NULL
#> 348                                                                                                           NULL
#> 349                                                                                                           NULL
#> 350                                                                                                           NULL
#> 351                                                                                                           NULL
#> 352                                                                                                           NULL
#> 353                                                                                                           NULL
#> 354                                                                                     It throbs with inner heat.
#> 355                                        A thing of death and beauty, it catches the light with a greenish glow.
#> 356                                                                               Blood-drinker, a thirsty friend.
#> 357                                                                                                       Cheater!
#> 358                                    The straight line between life and death runs along the edge of this blade.
#> 359                                     Unsheathed, it sizzles and spits with deathless fire, an impossible blade.
#> 360                                                         Purest of metals, nothing unclean can abide its touch.
#> 361                                                                                                           Skl!
#> 362                                                                              One year since we arrived... Skl!
#> 363                                                              Odin's finest warriors deserve the finest drinks.
#> 364                                                                                           A sticky lump of tar
#> 365                                                                                                           NULL
#> 366                                                                                         Beautiful but prickly.
#> 367                                                                                   It is crackling with energy.
#> 368                                                                          A bar of pure tin ready to be worked.
#> 369                                                               Unrefined tin. Needs to be refined in a smelter.
#> 370                                                          It brings light and warmth, drives back the darkness.
#> 371                                                                                                           NULL
#> 372                                                                                                           NULL
#> 373                                                                                                           NULL
#> 374                                                                                                           NULL
#> 375                                                                                                           NULL
#> 376                                               A thick and sturdy hide. This is why trolls are so hard to kill.
#> 377                                                           It's been dead so long that it started living again.
#> 378                                                                                A smelly lump of sticky matter.
#> 379                                                  This boar head would make for a nice decoration in any house.
#> 380                  Bones and viscous goo, held together by some unseen force.Offer it to the Sacrificial Stones.
#> 381                                                                 The fire in its eyes has still not burned out.
#> 382                                                        You don't like touching this thing even when it's dead.
#> 383                                      A fine specimen but you'll need to kill more than deer to enter Valhalla.
#> 384                  The head of a dragon, majestic even in the rigor of death.Offer it to the Sacrificial Stones.
#> 385                                                      Bind up the mouth if it starts to whisper in the night...
#> 386                                      The dead stare of the glowing red eyes sends a shiver through your bones.
#> 387                                                      Bind up the mouth if it starts to whisper in the night...
#> 388                                              This severed head oozes power.Offer it to the Sacrificial Stones.
#> 389                                             Half-way between wolf and man, its face frozen in a snarl of pain.
#> 390                                                  The leathery skin bears the faded tracery of ancient symbols.
#> 391                                                  The leathery skin bears the faded tracery of ancient symbols.
#> 392                               Loose folds of greenish skin gathered in around a pair of dark and hateful eyes.
#> 393                                                               The huge grizzled head is as heavy as a boulder.
#> 394                                                                             The crownless head of a dead king.
#> 395                                       Even killing it couldn't wipe the knowing smile from its crooked lips...
#> 396                                                                        The mossy, severed head of a Greydwarf.
#> 397                                                   It took seven blows to hack this gnarled head from its body.
#> 398                                                  It may try to come back so be sure to prune any new shoots...
#> 399                                                                                       A black and sticky mess.
#> 400                                                                                       Still cold to the touch.
#> 401                                            Although slimy, the skin is beautifully patterned in red and black.
#> 402                                                                 A giant beast's head, thatched with thick fur.
#> 403                    The beady eyes and razorsharp teeth belies the ostensibly calm nature of this small lizard.
#> 404                                                          The scales have dulled but the eyes are still bright.
#> 405                                 This crystalline rock formation would make for an impressive floor decoration.
#> 406                               The expressionless grin of this skull reminds you of the inevitability of death.
#> 407                                                    A rank and rotten skull. You're not sure why you kept it...
#> 408                                                       Wreathed in pale flame, it still smolders like an ember.
#> 409                                              This severed head oozes power.Offer it to the Sacrificial Stones.
#> 410                                                                          A rugged tail from a not so good boy.
#> 411                            Frozen in death, the hair matted with blood and a silent howl lodged in its throat.
#> 412                                           The shed skin of a wraith, a flowing robe only visible by moonlight.
#> 413                                                                                                      A turnip.
#> 414                                                                                Plant to grow a healthy turnip.
#> 415                                                                                    Nutritious and restorative.
#> 416                                                                                                           NULL
#> 417                                                                                                           NULL
#> 418                                                                        Placeholder item for Yagluth item drop.
#> 419                                             This ancient bone remembers the location of many forgotten things.
#> 420                                                                           A giant bone, knotted like old wood.
#> 421                                                                                                           NULL
#> 422                                                                                                           NULL
#> 423                                                                                                           NULL
#> 424                                                                                It is hard and sharp like iron.
#> 425                                                                                                   Still sharp.
#> 426                                                          A bundle of thick, rough hair. It has a strong smell.
#> 427                                                                                      Chewy and full of flavor.
#> 428                                                                                                               
#> 429                                                                                           Dripping with taste.
#> 430                                                                                          A pelt of shaggy fur.
#> 431                                                                                Good strong wood to build with.
#> 432                                                                                                           NULL
#> 433                                                                        Placeholder item for Yagluth item drop.
#> 434                                                                          The earthy remains of the giant Ymir.
recipes_df  # prints the recipes_df data frame to the Console
#>                   recipe_name                         item_name amount_created
#> 1                        Adze                              NULL              1
#> 2                        Adze                              NULL              1
#> 3          Armor Bronze Chest              Bronze plate cuirass              1
#> 4          Armor Bronze Chest              Bronze plate cuirass              1
#> 5           Armor Bronze Legs             Bronze plate leggings              1
#> 6           Armor Bronze Legs             Bronze plate leggings              1
#> 7          Armor Fenrir Chest                       Fenris coat              1
#> 8          Armor Fenrir Chest                       Fenris coat              1
#> 9          Armor Fenrir Chest                       Fenris coat              1
#> 10          Armor Fenrir Legs                   Fenris leggings              1
#> 11          Armor Fenrir Legs                   Fenris leggings              1
#> 12          Armor Fenrir Legs                   Fenris leggings              1
#> 13           Armor Iron Chest                   Iron scale mail              1
#> 14           Armor Iron Chest                   Iron scale mail              1
#> 15            Armor Iron Legs                      Iron greaves              1
#> 16            Armor Iron Legs                      Iron greaves              1
#> 17        Armor Leather Chest                     Leather tunic              1
#> 18        Armor Leather Chest                     Leather tunic              1
#> 19         Armor Leather Legs                     Leather pants              1
#> 20         Armor Leather Legs                     Leather pants              1
#> 21       Armor Padded Cuirass                    Padded cuirass              1
#> 22       Armor Padded Cuirass                    Padded cuirass              1
#> 23       Armor Padded Greaves                    Padded greaves              1
#> 24       Armor Padded Greaves                    Padded greaves              1
#> 25           Armor Rags Chest                         Rag tunic              1
#> 26            Armor Rags Legs                         Rag pants              1
#> 27           Armor Root Chest                      Root harnesk              1
#> 28           Armor Root Chest                      Root harnesk              1
#> 29           Armor Root Chest                      Root harnesk              1
#> 30            Armor Root Legs                     Root leggings              1
#> 31            Armor Root Legs                     Root leggings              1
#> 32            Armor Root Legs                     Root leggings              1
#> 33  Armor Troll Leather Chest               Troll leather tunic              1
#> 34   Armor Troll Leather Legs               Troll leather pants              1
#> 35           Armor Wolf Chest                  Wolf armor chest              1
#> 36           Armor Wolf Chest                  Wolf armor chest              1
#> 37           Armor Wolf Chest                  Wolf armor chest              1
#> 38            Armor Wolf Legs                   Wolf armor legs              1
#> 39            Armor Wolf Legs                   Wolf armor legs              1
#> 40            Armor Wolf Legs                   Wolf armor legs              1
#> 41               Arrow Bronze                  Bronzehead arrow             20
#> 42               Arrow Bronze                  Bronzehead arrow             20
#> 43               Arrow Bronze                  Bronzehead arrow             20
#> 44                 Arrow Fire                        Fire arrow             20
#> 45                 Arrow Fire                        Fire arrow             20
#> 46                 Arrow Fire                        Fire arrow             20
#> 47                Arrow Flint                   Flinthead arrow             20
#> 48                Arrow Flint                   Flinthead arrow             20
#> 49                Arrow Flint                   Flinthead arrow             20
#> 50                Arrow Frost                       Frost arrow             20
#> 51                Arrow Frost                       Frost arrow             20
#> 52                Arrow Frost                       Frost arrow             20
#> 53                Arrow Frost                       Frost arrow             20
#> 54                 Arrow Iron                    Ironhead arrow             20
#> 55                 Arrow Iron                    Ironhead arrow             20
#> 56                 Arrow Iron                    Ironhead arrow             20
#> 57               Arrow Needle                      Needle arrow             20
#> 58               Arrow Needle                      Needle arrow             20
#> 59             Arrow Obsidian                    Obsidian arrow             20
#> 60             Arrow Obsidian                    Obsidian arrow             20
#> 61             Arrow Obsidian                    Obsidian arrow             20
#> 62               Arrow Poison                      Poison arrow             20
#> 63               Arrow Poison                      Poison arrow             20
#> 64               Arrow Poison                      Poison arrow             20
#> 65               Arrow Poison                      Poison arrow             20
#> 66               Arrow Silver                      Silver arrow             20
#> 67               Arrow Silver                      Silver arrow             20
#> 68               Arrow Silver                      Silver arrow             20
#> 69                 Arrow Wood                        Wood arrow             20
#> 70          Atgeir Blackmetal                 Blackmetal atgeir              1
#> 71          Atgeir Blackmetal                 Blackmetal atgeir              1
#> 72          Atgeir Blackmetal                 Blackmetal atgeir              1
#> 73              Atgeir Bronze                     Bronze atgeir              1
#> 74              Atgeir Bronze                     Bronze atgeir              1
#> 75              Atgeir Bronze                     Bronze atgeir              1
#> 76                Atgeir Iron                       Iron atgeir              1
#> 77                Atgeir Iron                       Iron atgeir              1
#> 78                Atgeir Iron                       Iron atgeir              1
#> 79            Axe Black Metal                    Blackmetal axe              1
#> 80            Axe Black Metal                    Blackmetal axe              1
#> 81            Axe Black Metal                    Blackmetal axe              1
#> 82                 Axe Bronze                        Bronze axe              1
#> 83                 Axe Bronze                        Bronze axe              1
#> 84                 Axe Bronze                        Bronze axe              1
#> 85                  Axe Flint                         Flint axe              1
#> 86                  Axe Flint                         Flint axe              1
#> 87                  Axe Flint                         Flint axe              1
#> 88                   Axe Iron                          Iron axe              1
#> 89                   Axe Iron                          Iron axe              1
#> 90                   Axe Iron                          Iron axe              1
#> 91                  Axe Stone                         Stone axe              1
#> 92                  Axe Stone                         Stone axe              1
#> 93           Barley Wine Base Barley wine base: Fire resistance              1
#> 94           Barley Wine Base Barley wine base: Fire resistance              1
#> 95                  Battleaxe                         Battleaxe              1
#> 96                  Battleaxe                         Battleaxe              1
#> 97                  Battleaxe                         Battleaxe              1
#> 98         Battleaxe_ Crystal                 Crystal battleaxe              1
#> 99         Battleaxe_ Crystal                 Crystal battleaxe              1
#> 100        Battleaxe_ Crystal                 Crystal battleaxe              1
#> 101                 Blacksoup                        Black soup              1
#> 102                 Blacksoup                        Black soup              1
#> 103                 Blacksoup                        Black soup              1
#> 104             Blood Pudding                     Blood pudding              1
#> 105             Blood Pudding                     Blood pudding              1
#> 106             Blood Pudding                     Blood pudding              1
#> 107                Boar Jerky                        Boar jerky              2
#> 108                Boar Jerky                        Boar jerky              2
#> 109                 Bomb Ooze                         Ooze bomb              5
#> 110                 Bomb Ooze                         Ooze bomb              5
#> 111                 Bomb Ooze                         Ooze bomb              5
#> 112                       Bow                         Crude bow              1
#> 113                       Bow                         Crude bow              1
#> 114                       Bow                         Crude bow              1
#> 115           Bow Draugr Fang                       Draugr fang              1
#> 116           Bow Draugr Fang                       Draugr fang              1
#> 117           Bow Draugr Fang                       Draugr fang              1
#> 118           Bow Draugr Fang                       Draugr fang              1
#> 119             Bow Fine Wood                      Finewood bow              1
#> 120             Bow Fine Wood                      Finewood bow              1
#> 121             Bow Fine Wood                      Finewood bow              1
#> 122              Bow Huntsman                      Huntsman bow              1
#> 123              Bow Huntsman                      Huntsman bow              1
#> 124              Bow Huntsman                      Huntsman bow              1
#> 125              Bow Huntsman                      Huntsman bow              1
#> 126                     Bread                       Bread dough              2
#> 127                    Bronze                            Bronze              1
#> 128                    Bronze                            Bronze              1
#> 129                   Bronze5                            Bronze              5
#> 130                   Bronze5                            Bronze              5
#> 131              Bronze Nails                      Bronze nails             20
#> 132            Cape Deer Hide                    Deer hide cape              1
#> 133            Cape Deer Hide                    Deer hide cape              1
#> 134                Cape Linen                        Linen cape              1
#> 135                Cape Linen                        Linen cape              1
#> 136                  Cape Lox                          Lox cape              1
#> 137                  Cape Lox                          Lox cape              1
#> 138                 Cape Odin                      Cape of Odin              1
#> 139                 Cape Odin                      Cape of Odin              1
#> 140           Cape Troll Hide                   Troll hide cape              1
#> 141           Cape Troll Hide                   Troll hide cape              1
#> 142                 Cape Wolf                     Wolf fur cape              1
#> 143                 Cape Wolf                     Wolf fur cape              1
#> 144                 Cape Wolf                     Wolf fur cape              1
#> 145               Carrot Soup                       Carrot soup              1
#> 146               Carrot Soup                       Carrot soup              1
#> 147                    Chisel                              NULL              1
#> 148                    Chisel                              NULL              1
#> 149                      Club                              Club              1
#> 150                      Club                              Club              1
#> 151                Cultivator                        Cultivator              1
#> 152                Cultivator                        Cultivator              1
#> 153                 Deer Stew                         Deer stew              1
#> 154                 Deer Stew                         Deer stew              1
#> 155                 Deer Stew                         Deer stew              1
#> 156                 Eyescream                         Eyescream              1
#> 157                 Eyescream                         Eyescream              1
#> 158                Fish Wraps                        Fish wraps              1
#> 159                Fish Wraps                        Fish wraps              1
#> 160          Fist Fenrir Claw                     Flesh rippers              1
#> 161          Fist Fenrir Claw                     Flesh rippers              1
#> 162          Fist Fenrir Claw                     Flesh rippers              1
#> 163                    Hammer                            Hammer              1
#> 164                    Hammer                            Hammer              1
#> 165             Helmet Bronze                     Bronze helmet              1
#> 166             Helmet Bronze                     Bronze helmet              1
#> 167              Helmet Drake                      Drake helmet              1
#> 168              Helmet Drake                      Drake helmet              1
#> 169              Helmet Drake                      Drake helmet              1
#> 170             Helmet Fenrir                       Fenris hood              1
#> 171             Helmet Fenrir                       Fenris hood              1
#> 172             Helmet Fenrir                       Fenris hood              1
#> 173               Helmet Iron                       Iron helmet              1
#> 174               Helmet Iron                       Iron helmet              1
#> 175            Helmet Leather                    Leather helmet              1
#> 176            Helmet Leather                    Leather helmet              1
#> 177               Helmet Odin                      Hood of Odin              1
#> 178               Helmet Odin                      Hood of Odin              1
#> 179             Helmet Padded                     Padded helmet              1
#> 180             Helmet Padded                     Padded helmet              1
#> 181               Helmet Root                         Root mask              1
#> 182               Helmet Root                         Root mask              1
#> 183               Helmet Root                         Root mask              1
#> 184      Helmet Troll Leather              Troll leather helmet              1
#> 185      Helmet Troll Leather              Troll leather helmet              1
#> 186                       Hoe                               Hoe              1
#> 187                       Hoe                               Hoe              1
#> 188                Iron Nails                        Iron nails             10
#> 189          Knife Blackmetal                  Blackmetal knife              1
#> 190          Knife Blackmetal                  Blackmetal knife              1
#> 191          Knife Blackmetal                  Blackmetal knife              1
#> 192             Knife Butcher                     Butcher knife              1
#> 193             Knife Butcher                     Butcher knife              1
#> 194              Knife Chitin                     Abyssal razor              1
#> 195              Knife Chitin                     Abyssal razor              1
#> 196              Knife Chitin                     Abyssal razor              1
#> 197              Knife Copper                      Copper knife              1
#> 198              Knife Copper                      Copper knife              1
#> 199              Knife Copper                      Copper knife              1
#> 200               Knife Flint                       Flint knife              1
#> 201               Knife Flint                       Flint knife              1
#> 202               Knife Flint                       Flint knife              1
#> 203              Knife Silver                      Silver knife              1
#> 204              Knife Silver                      Silver knife              1
#> 205              Knife Silver                      Silver knife              1
#> 206              Knife Silver                      Silver knife              1
#> 207                   Lox Pie                   Unbaked lox pie              1
#> 208                   Lox Pie                   Unbaked lox pie              1
#> 209                   Lox Pie                   Unbaked lox pie              1
#> 210               Mace Bronze                       Bronze mace              1
#> 211               Mace Bronze                       Bronze mace              1
#> 212               Mace Bronze                       Bronze mace              1
#> 213                 Mace Iron                         Iron mace              1
#> 214                 Mace Iron                         Iron mace              1
#> 215                 Mace Iron                         Iron mace              1
#> 216               Mace Needle                         Porcupine              1
#> 217               Mace Needle                         Porcupine              1
#> 218               Mace Needle                         Porcupine              1
#> 219               Mace Needle                         Porcupine              1
#> 220               Mace Silver                          Frostner              1
#> 221               Mace Silver                          Frostner              1
#> 222               Mace Silver                          Frostner              1
#> 223               Mace Silver                          Frostner              1
#> 224    Mead Base Frost Resist       Mead base: Frost resistance              1
#> 225    Mead Base Frost Resist       Mead base: Frost resistance              1
#> 226    Mead Base Frost Resist       Mead base: Frost resistance              1
#> 227    Mead Base Frost Resist       Mead base: Frost resistance              1
#> 228   Mead Base Health Medium         Mead base: Medium healing              1
#> 229   Mead Base Health Medium         Mead base: Medium healing              1
#> 230   Mead Base Health Medium         Mead base: Medium healing              1
#> 231   Mead Base Health Medium         Mead base: Medium healing              1
#> 232    Mead Base Health Minor          Mead base: Minor healing              1
#> 233    Mead Base Health Minor          Mead base: Minor healing              1
#> 234    Mead Base Health Minor          Mead base: Minor healing              1
#> 235    Mead Base Health Minor          Mead base: Minor healing              1
#> 236   Mead Base Poison Resist      Mead base: Poison resistance              1
#> 237   Mead Base Poison Resist      Mead base: Poison resistance              1
#> 238   Mead Base Poison Resist      Mead base: Poison resistance              1
#> 239   Mead Base Poison Resist      Mead base: Poison resistance              1
#> 240  Mead Base Stamina Medium         Mead base: Medium stamina              1
#> 241  Mead Base Stamina Medium         Mead base: Medium stamina              1
#> 242  Mead Base Stamina Medium         Mead base: Medium stamina              1
#> 243   Mead Base Stamina Minor          Mead base: Minor stamina              1
#> 244   Mead Base Stamina Minor          Mead base: Minor stamina              1
#> 245   Mead Base Stamina Minor          Mead base: Minor stamina              1
#> 246           Mead Base Tasty                  Mead base: Tasty              1
#> 247           Mead Base Tasty                  Mead base: Tasty              1
#> 248           Mead Base Tasty                  Mead base: Tasty              1
#> 249          Mince Meat Sauce                 Minced Meat Sauce              1
#> 250          Mince Meat Sauce                 Minced Meat Sauce              1
#> 251          Mince Meat Sauce                 Minced Meat Sauce              1
#> 252                 Onionsoup                        Onion soup              1
#> 253            Pickaxe Antler                    Antler pickaxe              1
#> 254            Pickaxe Antler                    Antler pickaxe              1
#> 255            Pickaxe Bronze                    Bronze pickaxe              1
#> 256            Pickaxe Bronze                    Bronze pickaxe              1
#> 257              Pickaxe Iron                      Iron pickaxe              1
#> 258              Pickaxe Iron                      Iron pickaxe              1
#> 259             Pickaxe Stone                     Stone pickaxe              1
#> 260             Pickaxe Stone                     Stone pickaxe              1
#> 261       Potion Health Minor                Minor healing mead              1
#> 262       Potion Health Minor                Minor healing mead              1
#> 263       Potion Health Minor                Minor healing mead              1
#> 264      Potion Stamina Minor                Minor stamina mead              1
#> 265      Potion Stamina Minor                Minor stamina mead              1
#> 266      Potion Stamina Minor                Minor stamina mead              1
#> 267                Queens Jam                        Queens jam              4
#> 268                Queens Jam                        Queens jam              4
#> 269                 Sadle Lox                        Lox saddle              1
#> 270                 Sadle Lox                        Lox saddle              1
#> 271                 Sadle Lox                        Lox saddle              1
#> 272                  Sausages                          Sausages              4
#> 273                  Sausages                          Sausages              4
#> 274                  Sausages                          Sausages              4
#> 275              Serpent Stew                      Serpent stew              1
#> 276              Serpent Stew                      Serpent stew              1
#> 277              Serpent Stew                      Serpent stew              1
#> 278          Sharpening Stone                  Sharpening stone              1
#> 279             Shield Banded                     Banded shield              1
#> 280             Shield Banded                     Banded shield              1
#> 281         Shield Blackmetal                Black metal shield              1
#> 282         Shield Blackmetal                Black metal shield              1
#> 283         Shield Blackmetal                Black metal shield              1
#> 284   Shield Blackmetal Tower          Black metal tower shield              1
#> 285   Shield Blackmetal Tower          Black metal tower shield              1
#> 286   Shield Blackmetal Tower          Black metal tower shield              1
#> 287         Shield Bone Tower                 Bone tower shield              1
#> 288         Shield Bone Tower                 Bone tower shield              1
#> 289         Shield Bone Tower                 Bone tower shield              1
#> 290     Shield Bronze Buckler                    Bronze buckler              1
#> 291     Shield Bronze Buckler                    Bronze buckler              1
#> 292       Shield Iron Buckler                      Iron buckler              1
#> 293       Shield Iron Buckler                      Iron buckler              1
#> 294        Shield Iron Square                       Iron shield              1
#> 295        Shield Iron Square                       Iron shield              1
#> 296         Shield Iron Tower                 Iron tower shield              1
#> 297         Shield Iron Tower                 Iron tower shield              1
#> 298       Shield Serpentscale              Serpent scale shield              1
#> 299       Shield Serpentscale              Serpent scale shield              1
#> 300       Shield Serpentscale              Serpent scale shield              1
#> 301             Shield Silver                     Silver shield              1
#> 302             Shield Silver                     Silver shield              1
#> 303               Shield Wood                       Wood shield              1
#> 304               Shield Wood                       Wood shield              1
#> 305               Shield Wood                       Wood shield              1
#> 306         Shield Wood Tower                 Wood tower shield              1
#> 307         Shield Wood Tower                 Wood tower shield              1
#> 308        Shocklate Smoothie                         Muckshake              1
#> 309        Shocklate Smoothie                         Muckshake              1
#> 310        Shocklate Smoothie                         Muckshake              1
#> 311               Sledge Iron                       Iron sledge              1
#> 312               Sledge Iron                       Iron sledge              1
#> 313               Sledge Iron                       Iron sledge              1
#> 314               Sledge Iron                       Iron sledge              1
#> 315        Sledge Stagbreaker                       Stagbreaker              1
#> 316        Sledge Stagbreaker                       Stagbreaker              1
#> 317        Sledge Stagbreaker                       Stagbreaker              1
#> 318        Sledge Stagbreaker                       Stagbreaker              1
#> 319              Spear Bronze                      Bronze spear              1
#> 320              Spear Bronze                      Bronze spear              1
#> 321              Spear Bronze                      Bronze spear              1
#> 322              Spear Chitin                   Abyssal harpoon              1
#> 323              Spear Chitin                   Abyssal harpoon              1
#> 324              Spear Chitin                   Abyssal harpoon              1
#> 325           Spear Elderbark                Ancient bark spear              1
#> 326           Spear Elderbark                Ancient bark spear              1
#> 327           Spear Elderbark                Ancient bark spear              1
#> 328               Spear Flint                       Flint spear              1
#> 329               Spear Flint                       Flint spear              1
#> 330               Spear Flint                       Flint spear              1
#> 331           Spear Wolf Fang                        Fang spear              1
#> 332           Spear Wolf Fang                        Fang spear              1
#> 333           Spear Wolf Fang                        Fang spear              1
#> 334           Spear Wolf Fang                        Fang spear              1
#> 335          Sword Blackmetal                  Blackmetal sword              1
#> 336          Sword Blackmetal                  Blackmetal sword              1
#> 337          Sword Blackmetal                  Blackmetal sword              1
#> 338              Sword Bronze                      Bronze sword              1
#> 339              Sword Bronze                      Bronze sword              1
#> 340              Sword Bronze                      Bronze sword              1
#> 341                Sword Fire                           Dyrnwyn              1
#> 342                Sword Fire                           Dyrnwyn              1
#> 343                Sword Fire                           Dyrnwyn              1
#> 344                Sword Fire                           Dyrnwyn              1
#> 345                Sword Iron                        Iron sword              1
#> 346                Sword Iron                        Iron sword              1
#> 347                Sword Iron                        Iron sword              1
#> 348              Sword Silver                      Silver sword              1
#> 349              Sword Silver                      Silver sword              1
#> 350              Sword Silver                      Silver sword              1
#> 351              Sword Silver                      Silver sword              1
#> 352                   Tankard                           Tankard              1
#> 353                   Tankard                           Tankard              1
#> 354       Tankard Anniversary               Horn of Celebration              1
#> 355       Tankard Anniversary               Horn of Celebration              1
#> 356       Tankard Anniversary               Horn of Celebration              1
#> 357              Tankard Odin                 Mead horn of Odin              1
#> 358              Tankard Odin                 Mead horn of Odin              1
#> 359              Tankard Odin                 Mead horn of Odin              1
#> 360                     Torch                             Torch              1
#> 361                     Torch                             Torch              1
#> 362               Turnip Stew                       Turnip stew              1
#> 363               Turnip Stew                       Turnip stew              1
#> 364                Wolf Jerky                        Wolf jerky              2
#> 365                Wolf Jerky                        Wolf jerky              2
#> 366               Wolf Skewer                       Wolf skewer              1
#> 367               Wolf Skewer                       Wolf skewer              1
#> 368               Wolf Skewer                       Wolf skewer              1
#>     item_id amount_required  component_required
#> 1    item_1               3                Wood
#> 2    item_2               2               Stone
#> 3    item_1               5              Bronze
#> 4    item_2               2           Deer hide
#> 5    item_1               5              Bronze
#> 6    item_2               2           Deer hide
#> 7    item_1              20         Fenris hair
#> 8    item_2               5           Wolf pelt
#> 9    item_3              10      Leather scraps
#> 10   item_1              20         Fenris hair
#> 11   item_2               5           Wolf pelt
#> 12   item_3              10      Leather scraps
#> 13   item_1              20                Iron
#> 14   item_2               2           Deer hide
#> 15   item_1              20                Iron
#> 16   item_2               2           Deer hide
#> 17   item_1               6           Deer hide
#> 18   item_2               0      Bone fragments
#> 19   item_1               6           Deer hide
#> 20   item_2               0      Bone fragments
#> 21   item_1              10                Iron
#> 22   item_2              20        Linen thread
#> 23   item_1              10                Iron
#> 24   item_2              20        Linen thread
#> 25   item_1               5      Leather scraps
#> 26   item_1               5      Leather scraps
#> 27   item_1              10                Root
#> 28   item_2              10        Ancient bark
#> 29   item_3               2           Deer hide
#> 30   item_1              10                Root
#> 31   item_2              10        Ancient bark
#> 32   item_3               2           Deer hide
#> 33   item_1               5          Troll hide
#> 34   item_1               5          Troll hide
#> 35   item_1              20              Silver
#> 36   item_2               5           Wolf pelt
#> 37   item_3               1               Chain
#> 38   item_1              20              Silver
#> 39   item_2               5           Wolf pelt
#> 40   item_3               4           Wolf fang
#> 41   item_1               8                Wood
#> 42   item_2               1              Bronze
#> 43   item_3               2            Feathers
#> 44   item_1               8                Wood
#> 45   item_2               8               Resin
#> 46   item_3               2            Feathers
#> 47   item_1               8                Wood
#> 48   item_2               2               Flint
#> 49   item_3               2            Feathers
#> 50   item_1               8                Wood
#> 51   item_2               4            Obsidian
#> 52   item_3               2            Feathers
#> 53   item_4               1        Freeze gland
#> 54   item_1               8                Wood
#> 55   item_2               1                Iron
#> 56   item_3               2            Feathers
#> 57   item_1               4              Needle
#> 58   item_2               2            Feathers
#> 59   item_1               8                Wood
#> 60   item_2               4            Obsidian
#> 61   item_3               2            Feathers
#> 62   item_1               8                Wood
#> 63   item_2               4            Obsidian
#> 64   item_3               2            Feathers
#> 65   item_4               2                Ooze
#> 66   item_1               8                Wood
#> 67   item_2               1              Silver
#> 68   item_3               2            Feathers
#> 69   item_1               8                Wood
#> 70   item_1              10           Fine wood
#> 71   item_2              30         Black metal
#> 72   item_3               5        Linen thread
#> 73   item_1              10                Wood
#> 74   item_2               8              Bronze
#> 75   item_3               2      Leather scraps
#> 76   item_1              10                Wood
#> 77   item_2              30                Iron
#> 78   item_3               2      Leather scraps
#> 79   item_1               6           Fine wood
#> 80   item_2              20         Black metal
#> 81   item_3               5        Linen thread
#> 82   item_1               4                Wood
#> 83   item_2               8              Bronze
#> 84   item_3               2      Leather scraps
#> 85   item_1               4                Wood
#> 86   item_2               6               Flint
#> 87   item_3               0      Leather scraps
#> 88   item_1               4                Wood
#> 89   item_2              20                Iron
#> 90   item_3               2      Leather scraps
#> 91   item_1               5                Wood
#> 92   item_2               4               Stone
#> 93   item_1              10              Barley
#> 94   item_2              10        Cloudberries
#> 95   item_1              30        Ancient bark
#> 96   item_2              35                Iron
#> 97   item_3               4      Leather scraps
#> 98   item_1              40        Ancient bark
#> 99   item_2              30              Silver
#> 100  item_3              10             Crystal
#> 101  item_1               1            Bloodbag
#> 102  item_2               1               Honey
#> 103  item_3               1              Turnip
#> 104  item_1               2             Thistle
#> 105  item_2               2            Bloodbag
#> 106  item_3               4        Barley flour
#> 107  item_1               1           Boar meat
#> 108  item_2               1               Honey
#> 109  item_1               5      Leather scraps
#> 110  item_2               5                Ooze
#> 111  item_3               3               Resin
#> 112  item_1              10                Wood
#> 113  item_2               8      Leather scraps
#> 114  item_3               0           Deer hide
#> 115  item_1              10        Ancient bark
#> 116  item_2              20              Silver
#> 117  item_3               2           Deer hide
#> 118  item_4              10                Guck
#> 119  item_1              10           Fine wood
#> 120  item_2              10           Core wood
#> 121  item_3               2           Deer hide
#> 122  item_1              10           Fine wood
#> 123  item_2              20                Iron
#> 124  item_3              10            Feathers
#> 125  item_4               2           Deer hide
#> 126  item_1              10        Barley flour
#> 127  item_1               2              Copper
#> 128  item_2               1                 Tin
#> 129  item_1              10              Copper
#> 130  item_2               5                 Tin
#> 131  item_1               1              Bronze
#> 132  item_1               4           Deer hide
#> 133  item_2               5      Bone fragments
#> 134  item_1              20        Linen thread
#> 135  item_2               1              Silver
#> 136  item_1               6            Lox pelt
#> 137  item_2               2              Silver
#> 138  item_1              10      Leather scraps
#> 139  item_2               4                Coal
#> 140  item_1              10          Troll hide
#> 141  item_2              10      Bone fragments
#> 142  item_1               6           Wolf pelt
#> 143  item_2               4              Silver
#> 144  item_3               1         Wolf trophy
#> 145  item_1               1            Mushroom
#> 146  item_2               3              Carrot
#> 147  item_1               3                Wood
#> 148  item_2               1                Iron
#> 149  item_1               6                Wood
#> 150  item_2               0      Bone fragments
#> 151  item_1               5           Core wood
#> 152  item_2               5              Bronze
#> 153  item_1               1    Cooked deer meat
#> 154  item_2               1         Blueberries
#> 155  item_3               1              Carrot
#> 156  item_1               3       Greydwarf eye
#> 157  item_2               1        Freeze gland
#> 158  item_1               2         Cooked fish
#> 159  item_2               4        Barley flour
#> 160  item_1              10         Fenris hair
#> 161  item_2               6         Fenris claw
#> 162  item_3              10              Silver
#> 163  item_1               3                Wood
#> 164  item_2               2               Stone
#> 165  item_1               5              Bronze
#> 166  item_2               2           Deer hide
#> 167  item_1              20              Silver
#> 168  item_2               2           Wolf pelt
#> 169  item_3               2        Drake trophy
#> 170  item_1              20         Fenris hair
#> 171  item_2               2           Wolf pelt
#> 172  item_3               1      Cultist trophy
#> 173  item_1              20                Iron
#> 174  item_2               2           Deer hide
#> 175  item_1               6           Deer hide
#> 176  item_2               0      Bone fragments
#> 177  item_1              10      Leather scraps
#> 178  item_2               4                Coal
#> 179  item_1              10                Iron
#> 180  item_2              15        Linen thread
#> 181  item_1              10                Root
#> 182  item_2              10        Ancient bark
#> 183  item_3               4      Leather scraps
#> 184  item_1               5          Troll hide
#> 185  item_2               3      Bone fragments
#> 186  item_1               5                Wood
#> 187  item_2               2               Stone
#> 188  item_1               1                Iron
#> 189  item_1               4           Fine wood
#> 190  item_2              10         Black metal
#> 191  item_3               5        Linen thread
#> 192  item_1               2                Wood
#> 193  item_2               4                 Tin
#> 194  item_1               4           Fine wood
#> 195  item_2              20              Chitin
#> 196  item_3               2      Leather scraps
#> 197  item_1               2                Wood
#> 198  item_2               8              Copper
#> 199  item_3               0       Greydwarf eye
#> 200  item_1               2                Wood
#> 201  item_2               4               Flint
#> 202  item_3               2      Leather scraps
#> 203  item_1               2                Wood
#> 204  item_2              10              Silver
#> 205  item_3               3      Leather scraps
#> 206  item_4               2                Iron
#> 207  item_1               2        Cloudberries
#> 208  item_2               2            Lox meat
#> 209  item_3               4        Barley flour
#> 210  item_1               4                Wood
#> 211  item_2               8              Bronze
#> 212  item_3               3      Leather scraps
#> 213  item_1               4                Wood
#> 214  item_2              20                Iron
#> 215  item_3               3      Leather scraps
#> 216  item_1               5           Fine wood
#> 217  item_2              20                Iron
#> 218  item_3               5              Needle
#> 219  item_4              10        Linen thread
#> 220  item_1              10        Ancient bark
#> 221  item_2              30              Silver
#> 222  item_3               5          Ymir flesh
#> 223  item_4               5        Freeze gland
#> 224  item_1              10               Honey
#> 225  item_2               5             Thistle
#> 226  item_3               2            Bloodbag
#> 227  item_4               1       Greydwarf eye
#> 228  item_1              10               Honey
#> 229  item_2               4            Bloodbag
#> 230  item_3              10         Raspberries
#> 231  item_4               1           Dandelion
#> 232  item_1              10               Honey
#> 233  item_2               5         Blueberries
#> 234  item_3              10         Raspberries
#> 235  item_4               1           Dandelion
#> 236  item_1              10               Honey
#> 237  item_2               5             Thistle
#> 238  item_3               1           Neck tail
#> 239  item_4              10                Coal
#> 240  item_1              10               Honey
#> 241  item_2              10        Cloudberries
#> 242  item_3              10     Yellow mushroom
#> 243  item_1              10               Honey
#> 244  item_2              10         Raspberries
#> 245  item_3              10     Yellow mushroom
#> 246  item_1              10               Honey
#> 247  item_2              10         Raspberries
#> 248  item_3               5         Blueberries
#> 249  item_1               1           Boar meat
#> 250  item_2               1           Neck tail
#> 251  item_3               1              Carrot
#> 252  item_1               3               Onion
#> 253  item_1              10                Wood
#> 254  item_2               1         Hard antler
#> 255  item_1               3           Core wood
#> 256  item_2              10              Bronze
#> 257  item_1               3           Core wood
#> 258  item_2              20                Iron
#> 259  item_1               3                Wood
#> 260  item_2              10               Stone
#> 261  item_1               1            Mushroom
#> 262  item_2               1         Blueberries
#> 263  item_3               1           Dandelion
#> 264  item_1               1     Yellow mushroom
#> 265  item_2               1         Raspberries
#> 266  item_3               1               Honey
#> 267  item_1               8         Raspberries
#> 268  item_2               6         Blueberries
#> 269  item_1              10      Leather scraps
#> 270  item_2              20        Linen thread
#> 271  item_3              15         Black metal
#> 272  item_1               4            Entrails
#> 273  item_2               1           Boar meat
#> 274  item_3               1             Thistle
#> 275  item_1               1            Mushroom
#> 276  item_2               1 Cooked serpent meat
#> 277  item_3               2               Honey
#> 278  item_1               5               Stone
#> 279  item_1              10           Fine wood
#> 280  item_2               8                Iron
#> 281  item_1              10           Fine wood
#> 282  item_2               8         Black metal
#> 283  item_3               5               Chain
#> 284  item_1              15           Fine wood
#> 285  item_2              10         Black metal
#> 286  item_3               7               Chain
#> 287  item_1              10                Wood
#> 288  item_2              10      Bone fragments
#> 289  item_3               3     Skeleton trophy
#> 290  item_1              10              Bronze
#> 291  item_2               4                Wood
#> 292  item_1              10                Iron
#> 293  item_2               4        Ancient bark
#> 294  item_1              10           Fine wood
#> 295  item_2               6                Iron
#> 296  item_1              15           Fine wood
#> 297  item_2              10                Iron
#> 298  item_1              10           Fine wood
#> 299  item_2               4                Iron
#> 300  item_3               8       Serpent scale
#> 301  item_1              10           Fine wood
#> 302  item_2               8              Silver
#> 303  item_1              10                Wood
#> 304  item_2               4               Resin
#> 305  item_3               4      Leather scraps
#> 306  item_1              10                Wood
#> 307  item_2               6      Leather scraps
#> 308  item_1               1                Ooze
#> 309  item_2               2         Raspberries
#> 310  item_3               2         Blueberries
#> 311  item_1              10        Ancient bark
#> 312  item_2              30                Iron
#> 313  item_3               4          Ymir flesh
#> 314  item_4               1 Draugr Elite trophy
#> 315  item_1              20           Core wood
#> 316  item_2               5         Deer trophy
#> 317  item_3               2      Leather scraps
#> 318  item_4               0      Bone fragments
#> 319  item_1               5                Wood
#> 320  item_2               6              Bronze
#> 321  item_3               2           Deer hide
#> 322  item_1               8           Fine wood
#> 323  item_2              30              Chitin
#> 324  item_3               3      Leather scraps
#> 325  item_1               4          Troll hide
#> 326  item_2              10                Iron
#> 327  item_3              10        Ancient bark
#> 328  item_1               5                Wood
#> 329  item_2              10               Flint
#> 330  item_3               2      Leather scraps
#> 331  item_1              10        Ancient bark
#> 332  item_2               4           Wolf fang
#> 333  item_3               2      Leather scraps
#> 334  item_4               2              Silver
#> 335  item_1               2           Fine wood
#> 336  item_2              20         Black metal
#> 337  item_3               5        Linen thread
#> 338  item_1               2                Wood
#> 339  item_2               8              Bronze
#> 340  item_3               2      Leather scraps
#> 341  item_1               2           Fine wood
#> 342  item_2              20            Flametal
#> 343  item_3              20       Surtling core
#> 344  item_4               3      Leather scraps
#> 345  item_1               2                Wood
#> 346  item_2              20                Iron
#> 347  item_3               3      Leather scraps
#> 348  item_1               2                Wood
#> 349  item_2              40              Silver
#> 350  item_3               3      Leather scraps
#> 351  item_4               5                Iron
#> 352  item_1               5           Fine wood
#> 353  item_2               2               Resin
#> 354  item_1               2              Bronze
#> 355  item_2               2          Troll hide
#> 356  item_3               2                Iron
#> 357  item_1               4           Fine wood
#> 358  item_2               1         Deer trophy
#> 359  item_3               2               Resin
#> 360  item_1               1                Wood
#> 361  item_2               1               Resin
#> 362  item_1               1           Boar meat
#> 363  item_2               3              Turnip
#> 364  item_1               1           Wolf meat
#> 365  item_2               1               Honey
#> 366  item_1               1           Wolf meat
#> 367  item_2               2            Mushroom
#> 368  item_3               1               Onion

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
