#敵mobが実行者
##damage get
scoreboard players set #damage gis_temp_1 1
execute store result score #damage gis_temp_1 run data get entity @s ArmorItems[3].components."minecraft:enchantments".levels."gis:rpg_status_str"
scoreboard players operation @p[tag=gis_entity_defenser_check] gis_damage = #damage gis_temp_1

#damage
execute as @p[tag=gis_entity_defenser_check] run function gis:system/damage/e_to_p_physical
say enemy normal attack

#reset
tag @p[tag=gis_entity_defenser_check] remove gis_entity_defenser_check
tag @s remove gis_entity_attacker_check