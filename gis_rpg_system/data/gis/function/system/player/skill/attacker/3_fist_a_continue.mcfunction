

#2発目以降の打撃

execute at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 1.2

execute if score @s gis_skill_action_count matches 3 at @s run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 1.2



scoreboard players add @s gis_skill_action_count 1

execute if score @s gis_skill_action_count matches 3 run function gis:system/player/skill/attacker/3_fist_a_finish

