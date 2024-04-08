##get hp
#now hp
scoreboard players operation @s gis_temp_1 = @s gis_health

#max hp
execute store result score @s gis_temp_2 run data get entity @s HandDropChances.[1] -100
scoreboard players remove @s gis_temp_2 100000

##set hp
execute store result entity @s HandDropChances.[0] float -0.01 run scoreboard players add @s gis_temp_1 100000
scoreboard players remove @s gis_temp_1 100000


##hp calculate
#hp%  calculate
scoreboard players operation @s gis_temp_1 *= #20 gis_const
scoreboard players operation @s gis_temp_1 /= @s gis_temp_2
scoreboard players add @s gis_temp_1 1

#set team safix
execute if score @s gis_temp_1 matches 1 run team join gis_entity_hp_1 @s
execute if score @s gis_temp_1 matches 2 run team join gis_entity_hp_2 @s
execute if score @s gis_temp_1 matches 3 run team join gis_entity_hp_3 @s
execute if score @s gis_temp_1 matches 4 run team join gis_entity_hp_4 @s
execute if score @s gis_temp_1 matches 5 run team join gis_entity_hp_5 @s
execute if score @s gis_temp_1 matches 6 run team join gis_entity_hp_6 @s
execute if score @s gis_temp_1 matches 7 run team join gis_entity_hp_7 @s
execute if score @s gis_temp_1 matches 8 run team join gis_entity_hp_8 @s
execute if score @s gis_temp_1 matches 9 run team join gis_entity_hp_9 @s
execute if score @s gis_temp_1 matches 10 run team join gis_entity_hp_10 @s
execute if score @s gis_temp_1 matches 11 run team join gis_entity_hp_11 @s
execute if score @s gis_temp_1 matches 12 run team join gis_entity_hp_12 @s
execute if score @s gis_temp_1 matches 13 run team join gis_entity_hp_13 @s
execute if score @s gis_temp_1 matches 14 run team join gis_entity_hp_14 @s
execute if score @s gis_temp_1 matches 15 run team join gis_entity_hp_15 @s
execute if score @s gis_temp_1 matches 16 run team join gis_entity_hp_16 @s
execute if score @s gis_temp_1 matches 17 run team join gis_entity_hp_17 @s
execute if score @s gis_temp_1 matches 18 run team join gis_entity_hp_18 @s
execute if score @s gis_temp_1 matches 19 run team join gis_entity_hp_19 @s
execute if score @s gis_temp_1 matches 20.. run team join gis_entity_hp_20 @s


#reset
scoreboard players reset @s gis_temp_1
scoreboard players reset @s gis_temp_2


