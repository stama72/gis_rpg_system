#base set
data merge entity @s {billboard:"center",Tags:["gis_kill","gis_kill_pause"],brightness:{sky:15,block:15},see_through:1b,text:'{"score":{"name":"#gis_temp","objective":"gis_damage"},"color":"white"}',PortalCooldown:15}
execute if entity @p[tag=gis_player_attacker_check,tag=gis_player_attacker_by_fire_element] run data merge entity @s {billboard:"center",Tags:["gis_kill","gis_kill_pause"],brightness:{sky:15,block:15},see_through:1b,text:'{"score":{"name":"#gis_temp","objective":"gis_damage"},"color":"red"}',PortalCooldown:15}
execute if entity @p[tag=gis_player_attacker_check,tag=gis_player_attacker_by_water_element] run data merge entity @s {billboard:"center",Tags:["gis_kill","gis_kill_pause"],brightness:{sky:15,block:15},see_through:1b,text:'{"score":{"name":"#gis_temp","objective":"gis_damage"},"color":"aqua"}',PortalCooldown:15}
execute if entity @p[tag=gis_player_attacker_check,tag=gis_player_attacker_by_air_element] run data merge entity @s {billboard:"center",Tags:["gis_kill","gis_kill_pause"],brightness:{sky:15,block:15},see_through:1b,text:'{"score":{"name":"#gis_temp","objective":"gis_damage"},"color":"green"}',PortalCooldown:15}
execute if entity @p[tag=gis_player_attacker_check,tag=gis_player_attacker_by_earth_element] run data merge entity @s {billboard:"center",Tags:["gis_kill","gis_kill_pause"],brightness:{sky:15,block:15},see_through:1b,text:'{"score":{"name":"#gis_temp","objective":"gis_damage"},"color":"yellow"}',PortalCooldown:15}



#tp
execute store result score @s gis_temp_1 run random value 1..16
execute if score @s gis_temp_1 matches 1 positioned ~ ~1 ~ facing entity @p eyes rotated ~ ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 2 positioned ~ ~1 ~ facing entity @p eyes rotated ~22.5 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 3 positioned ~ ~1 ~ facing entity @p eyes rotated ~45 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 4 positioned ~ ~1 ~ facing entity @p eyes rotated ~67.5 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 5 positioned ~ ~1 ~ facing entity @p eyes rotated ~90 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 6 positioned ~ ~1 ~ facing entity @p eyes rotated ~112.5 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 7 positioned ~ ~1 ~ facing entity @p eyes rotated ~135 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 8 positioned ~ ~1 ~ facing entity @p eyes rotated ~157.5 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 9 positioned ~ ~1 ~ facing entity @p eyes rotated ~180 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 10 positioned ~ ~1 ~ facing entity @p eyes rotated ~202.5 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 11 positioned ~ ~1 ~ facing entity @p eyes rotated ~225 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 12 positioned ~ ~1 ~ facing entity @p eyes rotated ~247.5 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 13 positioned ~ ~1 ~ facing entity @p eyes rotated ~270 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 14 positioned ~ ~1 ~ facing entity @p eyes rotated ~292.5 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 15 positioned ~ ~1 ~ facing entity @p eyes rotated ~315 ~ run tp ^ ^ ^0.7
execute if score @s gis_temp_1 matches 16 positioned ~ ~1 ~ facing entity @p eyes rotated ~337.5 ~ run tp ^ ^ ^0.7

#
data merge entity @s {start_interpolation:-1,interpolation_duration:15,teleport_duration:15,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}}

#reset
scoreboard players reset @s gis_temp_1