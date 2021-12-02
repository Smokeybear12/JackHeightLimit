# from clocks/main
#> technical ticking - most things here should be isolated from main logic
execute as @a[predicate=nullscape:overworld] at @s if block ~ ~ ~ end_portal run function nullscape:technical/dim/to_null_island
execute as @a[predicate=nullscape:overworld] at @s if block ~ ~1 ~ end_portal run function nullscape:technical/dim/to_null_island

# execute as @a[advancements={nullscape:technical/dim_change={to_end=true}}] run function nullscape:player/on_dim_change

execute in nullscape:end_island positioned 0 0 0 as @e[distance=0..,type=!enderman,type=!ender_pearl] run function nullscape:technical/gateway/null_island_checks
execute in nullscape:end_island positioned 0 0 0 as @e[type=ender_pearl,distance=0..] run function nullscape:technical/gateway/null_island_pearl

#execute in minecraft:the_end positioned 0 0 0 as @e[type=ender_pearl,distance=0..] run function nullscape:technical/gateway/nullscape_pearl

execute as @e[type=marker,tag=ns.nullscape_gateway] at @s run function nullscape:technical/gateway/nullscape_checks

#execute in minecraft:the_end positioned 100 49 0 if entity @e[type=!player,tag=ns.dim_normal,distance=0..] run #tellraw @a {"selector": "@e[type=!player,tag=ns.dim_normal,distance=0..]"}
#execute in minecraft:the_end positioned 100 49 0 if entity @e[type=!player,tag=ns.dim_null_island,distance=0..] run #tellraw @a {"selector": "@e[type=!player,tag=ns.dim_null_island,distance=0..]"}

#> Condition:
#>   if an entity is within the spawning platform in the end
#>    and was last in a normal dimension (overworld)
#> Action:
#>   send to nullscape's fake end island (null island)
execute in minecraft:the_end positioned 100 49 0 as @e[type=!player,tag=ns.dim_normal,distance=..4] run function nullscape:technical/dim/to_null_island

#> Condition:
#>   if an entity is within the spawning platform in the end
#>    and was last in the_end (nullscape)
#> Action:
#>   send to overworld world spawn
execute in minecraft:the_end positioned 100 49 0 as @e[type=!player,tag=ns.dim_null_island,distance=..5] run function nullscape:technical/dim/to_overworld

#execute at @e[type=marker,tag=ns.nullscape_gateway] run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.1 1 normal @a


#> TODO: we can perf check this
#> Tagging entities by their dimension (normal being anywhere else)
# global @e is better here since there's no execute
#  we only run 6 @e commands every tick
#  which is better than 1 @e x entity count commands (for example)
tag @e remove ns.dim_the_end
tag @e remove ns.dim_null_island
tag @e remove ns.dim_normal
tag @e[type=!player,type=!ender_pearl,predicate=nullscape:dim/the_end] add ns.dim_the_end
tag @e[type=!player,type=!ender_pearl,predicate=nullscape:dim/null_island] add ns.dim_null_island
tag @e[type=!player,type=!ender_pearl,tag=!ns.dim_the_end,tag=!ns.dim_null_island] add ns.dim_normal

execute at @e[type=marker,tag=global.ignore,tag=ns.nullscape_gateway] run function nullscape:technical/gateway/purge_markers

advancement revoke @a[advancements={nullscape:technical/dim_change=true}] only nullscape:technical/dim_change

execute in nullscape:end_island positioned 0 0 0 as @a[distance=850..2000] run function nullscape:technical/misc/rubberband

execute in nullscape:end_island positioned 0 0 0 as @e[type=ender_pearl,distance=850..] run kill @s