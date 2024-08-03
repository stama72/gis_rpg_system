##damage_get_&reset
execute store result score @s gis_temp_1 run data get entity @s Health -100
scoreboard players add @s gis_temp_1 102400


##target_check
#tag_set
execute if score @s gis_temp_1 matches 1..2000 run tag @s add gis_entity_defenser_check

#damage_calculate
execute if entity @s[tag=gis_entity_defenser_check] run function gis:system/entity/entity_player_damage

#reset
execute if entity @s[tag=gis_entity_defenser_check] run data modify entity @s Health set value 1024.0f
execute if entity @s[tag=gis_entity_defenser_check] run tag @s remove gis_entity_defenser_check


##reset
scoreboard players reset @s gis_temp_1
