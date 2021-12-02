# @s: entity (location is worldspawn)
#> send entity to the nullscape (the_end)

#say going to nullscape

tag @s add ns.self
kill @e[type=ender_pearl,distance=..3]

execute store result score $x ns.dummy run data get entity @s Pos[0] 0.1
execute store result score $z ns.dummy run data get entity @s Pos[2] 0.1

execute unless entity @e[type=marker,tag=ns.teleporter,tag=global.ignore,distance=..20] run summon marker ~ ~ ~ {Tags:['ns.teleporter','global.ignore']}
execute as @e[type=marker,limit=1,distance=..1,tag=ns.teleporter] run function nullscape:technical/gateway/marker_teleport 

tag @s remove ns.self


