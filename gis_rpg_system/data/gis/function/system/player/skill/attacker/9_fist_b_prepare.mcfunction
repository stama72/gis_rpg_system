#ワンストライクの発動条件チェック

scoreboard players add @s gis_skill_using_count 1

execute unless predicate gis:entity_check/is_sneak run scoreboard players set @s gis_skill_using_count 0

execute unless score @s gis_skill_using_count matches 20 run return 1
tellraw @s "you have been ready for ワンストライク"
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1
return 1