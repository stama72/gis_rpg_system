

#2発目以降の打撃


execute at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 1.3

execute if score @s gis_skill_action_count matches 3..4 at @s run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 1.2
execute if score @s gis_skill_action_count matches 5 at @s run playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1.2
execute if score @s gis_skill_action_count matches 5 at @s run playsound entity.firework_rocket.twinkle master @a ~ ~ ~ 1 1



scoreboard players add @s gis_skill_action_count 1

execute if score @s gis_skill_action_count matches 5 run function gis:system/player/skill/attacker/7_fist_a_finish

