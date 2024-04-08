##input damage
scoreboard players operation @s gis_temp_1 = @s gis_damage


##damage_calculate
#get random
execute store result score @s gis_temp_2 run random value 35..65
execute store result score @s gis_temp_3 run random value 35..65
scoreboard players operation @s gis_temp_2 += @s gis_temp_3
scoreboard players operation @s gis_temp_1 *= @s gis_temp_2

#get def
execute store result score @s gis_temp_2 run data get entity @s ArmorDropChances.[1] -100
scoreboard players remove @s gis_temp_2 99900

#calculate  damage
scoreboard players operation @s gis_temp_1 /= @s gis_temp_2
scoreboard players operation @s gis_temp_1 /= #10 gis_const
scoreboard players add @s gis_temp_1 1


##output damage
scoreboard players operation @s gis_damage = @s gis_temp_1