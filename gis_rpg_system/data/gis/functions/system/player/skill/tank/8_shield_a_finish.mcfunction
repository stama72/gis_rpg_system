#ガードオブアイギス
scoreboard players set @s gis_cooltime 600

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0

#耐性4、防御上昇2、抵抗上昇2
effect give @s resistance 20 3 false

tellraw @s "ガードオブアイギス！"
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1
