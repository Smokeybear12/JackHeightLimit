# @s: player (at world spawn)
#> event: on player dim change

#tellraw @a ["Pos: ", {"entity": "@s", "nbt": "Pos"}, "\nDimension: ", {"entity": "@s", "nbt": "Dimension"}]

#> Condition:
#>   player goes to the_end
#>   player is near 100 50 0 (game generated obby)
#>     (^ allows for other forms of tp)
#>   player does not go to end FROM nullscape:end_island
#> Action:
#>   send player to nullscape:end_island
execute in minecraft:the_end positioned 100 50 0 if entity @s[distance=..3, advancements={nullscape:technical/dim_change={to_end=true}}] if entity @s[advancements={nullscape:technical/dim_change={from_null_to_end=false}}] run function nullscape:technical/dim/to_null_island

#> Condition:
#>   player goes to the_end from nullscape:end_island
#>   player is near 100 50 0 (game generated obby)
#>    (^ allows for other forms of tp)
#> Action:
#>   send player to overworld
execute in minecraft:the_end positioned 100 50 0 if entity @s[distance=..3,advancements={nullscape:technical/dim_change={from_null_to_end=true}}] run function nullscape:technical/dim/to_overworld

tag @s remove ns.tpd
