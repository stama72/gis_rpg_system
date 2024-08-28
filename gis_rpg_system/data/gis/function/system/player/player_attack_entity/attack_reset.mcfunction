#スキルが使われてなければ素手のnormal attack
execute if entity @s[tag=!gis_skill_attacked] run scoreboard players operation @s gis_damage = @s gis_temp_1
execute if entity @s[tag=!gis_skill_attacked] run function gis:system/entity/entity_player_damage
execute if entity @s[tag=!gis_skill_attacked] run say player normal attack

#reset
data modify entity @s Health set value 1024.0f
tag @s remove gis_entity_defenser_check
tag @s remove gis_skill_attacked

scoreboard players reset @s gis_temp_1
tag @p[tag=gis_player_attacker_check] remove gis_player_attacker_check

