#ファイアショット
scoreboard players set @s gis_cooltime 60
#scoreboard players set @s gis_skill_using 1
#scoreboard players set @s gis_skill_using_count 1

tellraw @s "ファイアショット！"
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1

summon fireball ~ ~ ~

