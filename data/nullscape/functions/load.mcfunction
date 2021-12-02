# #minecraft:load
scoreboard objectives add ns.dummy dummy
scoreboard objectives add ns.const dummy

# we have to for proper entity teleporation >:(
execute in minecraft:the_end run forceload remove 100 0
execute in minecraft:the_end run forceload add 100 0

execute in nullscape:end_island run forceload remove 100 0
execute in nullscape:end_island run forceload add 100 0

#say nullscape loaded

schedule clear nullscape:clocks/main
schedule function nullscape:clocks/main 1t replace
