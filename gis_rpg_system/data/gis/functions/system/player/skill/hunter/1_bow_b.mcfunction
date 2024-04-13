#アローレイン
scoreboard players set @s gis_cooltime 100

scoreboard players set @s gis_skill_using 1
scoreboard players set @s gis_skill_using_count 1
tellraw @s "アローレイン！"
execute at @s run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1

#矢に追跡タグを付ける
execute as @e[type=arrow,limit=1,sort=nearest] run tag @s add shot_arrow_skill_1
execute as @e[type=arrow,limit=1,sort=nearest] run data modify entity @s Color set value 2851071

