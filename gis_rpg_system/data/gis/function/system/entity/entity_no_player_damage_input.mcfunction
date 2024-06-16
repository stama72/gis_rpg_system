##
execute store result score @s gis_damage run data get entity @s Health -100
scoreboard players add @s gis_damage 102400
data modify entity @s Health set value 1024.0f