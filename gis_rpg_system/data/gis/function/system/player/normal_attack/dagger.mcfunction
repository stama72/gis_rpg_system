
tag @p[tag=normal_attack] add gis_player_attacker_check

##damage get
execute store result score @s gis_temp_1 run data get entity @s Health -100
scoreboard players add @s gis_temp_1 102400
scoreboard players operation @s gis_damage = @s gis_temp_1
#damage calc
execute if score @p[tag=normal_attack] gis_job matches 3 run scoreboard players operation @s gis_damage *= #5 gis_const
execute unless score @p[tag=normal_attack] gis_job matches 3 run scoreboard players operation @s gis_damage *= #4 gis_const
#damage
execute at @s run function gis:system/entity/entity_player_damage
say player normal attack

#reset
tag @p[tag=normal_attack] remove gis_player_attacker_check
tag @a remove normal_attack
tag @s add gis_skill_attacked