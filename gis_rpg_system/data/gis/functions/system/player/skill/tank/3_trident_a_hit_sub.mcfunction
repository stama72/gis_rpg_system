

execute at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1
execute at @s run particle dust{color:[0.478,0.267,0.024],scale:1} ~ ~0.3 ~ 1.3 0.3 1.3 10 200 normal @a
execute at @s as @e[type=#enemy,distance=..3] run effect give @s weakness 10 1 false
execute at @s as @e[type=#enemy,distance=..3] at @s run particle trial_spawner_detection_ominous ~ ~1.8 ~ 0.08 0.03 0.08 0 10 normal @a
#particle angry_villager ~ ~2 ~ 0 0 0 1 1 force @a

tag @s remove thrown_trident_skill_3

