execute as @s[predicate=nullscape:tar_bog] run scoreboard players add @s ns.tar_time 1
execute as @s[predicate=!nullscape:tar_bog,scores={ns.tar_time=1..}] run scoreboard players remove @s ns.tar_time 2
execute as @s[scores={ns.tar_time=8..39}] run effect give @s slowness 1 0
execute as @s[scores={ns.tar_time=40..59}] run effect give @s slowness 1 1
execute as @s[scores={ns.tar_time=60..79}] run effect give @s slowness 1 2
execute as @s[scores={ns.tar_time=80..99}] run effect give @s slowness 1 3
execute as @s[scores={ns.tar_time=100..}] run effect give @s slowness 1 4
execute as @s[scores={ns.tar_time=80..}] run effect give @s blindness 3 0
execute as @s[scores={ns.tar_time=180..220}] run effect give @s wither 1 0
execute as @s[scores={ns.tar_time=220..350}] run effect give @s wither 1 1
execute as @s[scores={ns.tar_time=350..}] run effect give @s wither 1 2

execute as @s[scores={ns.tar_time=40..},predicate=nullscape:5_percent] run playsound minecraft:block.lava.pop player @a[distance=..5] ~ ~ ~ 1 1.0 1
execute as @s[scores={ns.tar_time=40..},predicate=nullscape:2_percent] run playsound minecraft:block.slime_block.place player @a[distance=..5] ~ ~ ~ 1 0.9 1
execute as @s[scores={ns.tar_time=50..},predicate=nullscape:5_percent] run playsound minecraft:block.lava.pop player @a[distance=..5] ~ ~ ~ 1 0.8 1
execute as @s[scores={ns.tar_time=60..},predicate=nullscape:2_percent] run playsound minecraft:block.slime_block.place player @a[distance=..5] ~ ~ ~ 1 0.7 1
execute as @s[scores={ns.tar_time=70..},predicate=nullscape:5_percent] run playsound minecraft:block.lava.pop player @a[distance=..5] ~ ~ ~ 1 0.6 1
execute as @s[scores={ns.tar_time=80..},predicate=nullscape:2_percent] run playsound minecraft:block.slime_block.place player @a[distance=..5] ~ ~ ~ 1 0.5 1
execute as @s[scores={ns.tar_time=90..},predicate=nullscape:5_percent] run playsound minecraft:block.lava.pop player @a[distance=..5] ~ ~ ~ 1 0.4 1
execute as @s[scores={ns.tar_time=100..},predicate=nullscape:2_percent] run playsound minecraft:block.slime_block.place player @a[distance=..5] ~ ~ ~ 1 0.3 1
execute as @s[scores={ns.tar_time=110..},predicate=nullscape:5_percent] run playsound minecraft:block.lava.pop player @a[distance=..5] ~ ~ ~ 1 0.2 1

execute as @s[scores={ns.tar_time=40..},predicate=nullscape:10_percent] run particle minecraft:falling_dust black_concrete ~ ~1 ~ 0.5 0.5 0.5 0 2 force
execute as @s[scores={ns.tar_time=50..},predicate=nullscape:10_percent] run particle minecraft:falling_dust black_concrete ~ ~1 ~ 0.6 0.6 0.6 0 2 force
execute as @s[scores={ns.tar_time=60..},predicate=nullscape:10_percent] run particle minecraft:falling_dust black_concrete ~ ~1 ~ 0.7 0.7 0.7 0 2 force
execute as @s[scores={ns.tar_time=70..},predicate=nullscape:10_percent] run particle minecraft:falling_dust black_concrete ~ ~1 ~ 0.8 0.8 0.8 0 2 force
execute as @s[scores={ns.tar_time=80..},predicate=nullscape:10_percent] run particle minecraft:falling_dust black_concrete ~ ~1 ~ 0.8 0.5 0.8 0 2 force
execute as @s[scores={ns.tar_time=90..},predicate=nullscape:10_percent] run particle minecraft:falling_dust black_concrete ~ ~1 ~ 0.5 0.8 0.5 0 2 force
execute as @s[scores={ns.tar_time=100..},predicate=nullscape:10_percent] run particle minecraft:falling_dust black_concrete ~ ~1 ~ 0.5 0.5 0.5 0 2 force
execute as @s[scores={ns.tar_time=110..},predicate=nullscape:10_percent] run particle minecraft:falling_dust black_concrete ~ ~1 ~ 0.5 0.5 0.5 0 2 force
execute as @s[scores={ns.tar_time=120..},predicate=nullscape:10_percent] run particle minecraft:falling_dust black_concrete ~ ~1 ~ 0.5 0.5 0.5 0 2 force
execute as @s[scores={ns.tar_time=130..},predicate=nullscape:10_percent] run particle minecraft:falling_dust black_concrete ~ ~1 ~ 0.5 0.5 0.5 0 2 force