#ケラウノス
scoreboard players add @s gis_skill_using_count 1

execute at @s at @e[type=lightning_bolt,distance=..15] run particle dust{color:[0.980,0.882,0.325],scale:1} ~ ~0.3 ~ 0.6 0.2 0.6 2 20 normal @a
#周囲10mに雷
execute store result score @s gis_temp_2 run random value 1..10
execute unless score @s gis_temp_2 matches 1 run return 0

execute at @s at @e[type=#enemy,distance=..10,limit=1] run summon lightning_bolt ~ ~1 ~
execute at @s as @n[type=lightning_bolt] at @s run ride @s mount @n[type=#enemy]
execute at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1

#execute if score @s gis_temp_1 matches 0 at @s run 

