#summon area_effect_cloud ~ ~1 ~ {ReapplicationDelay:2,Radius:2f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:300,WaitTime:0,Color:8788676,Effects:[{Id:19b,Amplifier:0b,Duration:25}]}
#execute as @e[type=area_effect_cloud,distance=..3,tag=ns.anger_cloud,limit=1] at @s run data modify entity @s Owner set from entity @p[distance=..64,gamemode=survival] UUID
#data merge entity @s {AngerTime:200}