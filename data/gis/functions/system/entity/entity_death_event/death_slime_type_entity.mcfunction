##set size
execute store result score @s gis_temp_1 run data get entity @s Size 1
execute store result entity @s Size int 1 run scoreboard players remove @s gis_temp_1 1

##unless size is 0
#palameter set
execute if score @s gis_temp_1 matches 1.. run data modify entity @s HandDropChances.[0] set from entity @s HandDropChances.[1]
execute if score @s gis_temp_1 matches 1.. run team join gis_entity_hp_20

#data strage
execute if score @s gis_temp_1 matches 1.. run data modify storage gis_temp temp_1.ArmorDropChances set from entity @s ArmorDropChances
execute if score @s gis_temp_1 matches 1.. run data modify storage gis_temp temp_1.HandDropChances set from entity @s HandDropChances
execute if score @s gis_temp_1 matches 1.. run data modify storage gis_temp temp_1.CustomName set from entity @s CustomName
execute if score @s gis_temp_1 matches 1.. run data modify storage gis_temp temp_1.Tags set from entity @s Tags
execute if score @s gis_temp_1 matches 1.. run data modify storage gis_temp temp_1.Size set from entity @s Size

#split
execute if score @s gis_temp_1 matches 1.. store result score @s gis_temp_2 run random value 0..10

#slime
execute if score @s gis_temp_1 matches 1.. if entity @s[type=minecraft:slime] summon minecraft:slime run function gis:system/entity/entity_death_event/death_slime_type_entity_sub
execute if score @s gis_temp_1 matches 1.. if entity @s[type=minecraft:slime] if score @s gis_temp_2 matches 4.. summon minecraft:slime run function gis:system/entity/entity_death_event/death_slime_type_entity_sub
execute if score @s gis_temp_1 matches 1.. if entity @s[type=minecraft:slime] if score @s gis_temp_2 matches 8.. summon minecraft:slime run function gis:system/entity/entity_death_event/death_slime_type_entity_sub

#magma_cube
execute if score @s gis_temp_1 matches 1.. if entity @s[type=minecraft:magma_cube] summon minecraft:magma_cube run function gis:system/entity/entity_death_event/death_slime_type_entity_sub
execute if score @s gis_temp_1 matches 1.. if entity @s[type=minecraft:magma_cube] if score @s gis_temp_2 matches 4.. summon minecraft:magma_cube run function gis:system/entity/entity_death_event/death_slime_type_entity_sub
execute if score @s gis_temp_1 matches 1.. if entity @s[type=minecraft:magma_cube] if score @s gis_temp_2 matches 8.. summon minecraft:magma_cube run function gis:system/entity/entity_death_event/death_slime_type_entity_sub

##if size is 0
execute if score @s gis_temp_1 matches ..0 run team join gis_entity_hp_0 @s
execute if score @s gis_temp_1 matches ..0 run tag @s add gis_kill

#reset
scoreboard players reset @s gis_temp_1
scoreboard players reset @s gis_temp_2
data remove storage gis_temp temp_1



