

#2発目以降の打撃


execute at @s run playsound minecraft:entity.vindicator.ambient master @a ~ ~ ~ 1 0.7




scoreboard players add @s gis_skill_action_count 1

execute if score @s gis_skill_action_count matches 5 run function gis:system/player/skill/attacker/7_fist_a_finish

