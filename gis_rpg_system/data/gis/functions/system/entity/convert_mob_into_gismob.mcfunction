#slime
execute if entity @s[type=#minecraft:slime_type] store result score @s gis_temp_1 run data get entity @s Size 1
execute if entity @s[type=#minecraft:slime_type] store result entity @s Size long 1 run scoreboard players add @s gis_temp_1 1
execute if entity @s[type=#minecraft:slime_type] run effect give @s minecraft:health_boost 1 3 true

#setHP
execute store result score @s gis_temp_1 run attribute @s minecraft:generic.max_health get -10
execute store result entity @s HandDropChances.[1] float 0.01 run scoreboard players remove @s gis_temp_1 100000
execute store result entity @s HandDropChances.[0] float 0.01 run scoreboard players get @s gis_temp_1
attribute @s minecraft:generic.max_health base set 1024
data modify entity @s Health set value 1024.0f

#setATK
execute store result score @s gis_temp_1 run attribute @s minecraft:generic.attack_damage get -10
execute store result entity @s ArmorDropChances.[0] float 0.01 run scoreboard players remove @s gis_temp_1 100000

#setDef
execute store result score @s gis_temp_1 run attribute @s minecraft:generic.armor get -10
execute store result entity @s ArmorDropChances.[1] float 0.01 run scoreboard players remove @s gis_temp_1 100000
attribute @s minecraft:generic.armor base set 0

#setName
data modify entity @s CustomNameVisible set value 1
team join gis_entity_hp_20 @s

#set CanPickUpLoot
data modify entity @s CanPickUpLoot set value 0 


#reset
scoreboard players reset @s gis_temp_1