#coppy data
data modify entity @s ArmorDropChances set from storage gis_temp temp_1.ArmorDropChances
data modify entity @s HandDropChances set from storage gis_temp temp_1.HandDropChances
data modify entity @s CustomName set from storage gis_temp temp_1.CustomName
data modify entity @s Tags set from storage gis_temp temp_1.Tags
data modify entity @s Size set from storage gis_temp temp_1.Size

#set data
attribute @s minecraft:generic.max_health base set 1024
attribute @s minecraft:generic.armor base set 0
data modify entity @s Health set value 1024.0f
data modify entity @s CustomNameVisible set value 1b
team join gis_entity_hp_20 @s
data modify entity @s CanPickUpLoot set value 0b
data modify entity @s PersistenceRequired set value 1b