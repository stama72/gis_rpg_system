#ワンストライク
scoreboard players set @s gis_cooltime 200

scoreboard players set @s gis_skill_using 9
scoreboard players set @s gis_skill_using_count 1
tellraw @s "ワンストライク！"

playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1.5

tag @s add fist_skill_9_player