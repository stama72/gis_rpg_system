#2発目以降の打撃
tag @s add fist_skill_3_player


scoreboard players add @s gis_skill_action_count 1
execute at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 0.9 1.2
execute if score @s gis_skill_action_count matches 3 at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.7 1.8

