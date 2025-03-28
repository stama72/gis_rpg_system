
#slime
execute if entity @s[type=#minecraft:slime_type] store result score @s gis_temp_1 run data get entity @s Size 1
execute if entity @s[type=#minecraft:slime_type] store result entity @s Size long 1 run scoreboard players add @s gis_temp_1 1
execute if entity @s[type=#minecraft:slime_type] run effect give @s minecraft:health_boost 1 3 true

#equip stone button on head
#execute unless items entity @s armor.head * run item replace entity @s armor.head with stone_button[custom_name='"Status"',enchantments={levels:{"gis:rpg_status_str":5,"gis:rpg_status_def":1,"gis:rpg_status_res":1,"gis:rpg_status_hp1":200}}] 1

#setHP
execute store result score @s gis_temp_1 run attribute @s max_health get -10
execute store result entity @s HandDropChances.[1] float 0.01 run scoreboard players remove @s gis_temp_1 100000
execute store result entity @s HandDropChances.[0] float 0.01 run scoreboard players get @s gis_temp_1
attribute @s max_health base set 1024
data modify entity @s Health set value 1024.0f

#setATK
execute store result score @s gis_temp_1 run attribute @s attack_damage get -10
execute store result entity @s ArmorDropChances.[0] float 0.01 run scoreboard players remove @s gis_temp_1 100000

#setDef
execute store result score @s gis_temp_1 run attribute @s armor get -10
execute store result entity @s ArmorDropChances.[1] float 0.01 run scoreboard players remove @s gis_temp_1 100000
attribute @s armor base set 0

#setName
data modify entity @s CustomNameVisible set value true
team join gis_entity_hp_20 @s

#set CanPickUpLoot
data modify entity @s CanPickUpLoot set value false


#reset
scoreboard players reset @s gis_temp_1