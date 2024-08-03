##damage_get_&reset
execute store result score @s gis_temp_1 run data get entity @s Health -100
scoreboard players add @s gis_temp_1 102400


##target_check
#tag_set
execute if score @s gis_temp_1 matches 1..2000 run tag @s add gis_entity_defenser_check

##reset
execute unless entity @s[tag=gis_entity_defenser_check] run scoreboard players reset @s gis_temp_1
execute unless entity @s[tag=gis_entity_defenser_check] run tag @p[tag=gis_player_attacker_check] remove gis_player_attacker_check


