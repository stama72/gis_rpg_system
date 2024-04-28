#アライズ 
scoreboard players set @s gis_cooltime 150

scoreboard players set @s gis_skill_using 5
scoreboard players set @s gis_skill_using_count 1
tellraw @s "アライズ ！"
execute at @s run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1

#矢に追跡タグを付ける
execute as @e[type=arrow,limit=1,sort=nearest] run tag @s add shot_arrow_skill_5
execute as @e[type=arrow,limit=1,sort=nearest] run data modify entity @s Color set value 2851071
execute as @e[type=arrow,limit=1,sort=nearest] run data modify entity @s Item set value {id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}

