#フルブラウン・ディグニティ
#直進・加速し、貫通する矢。最初は少し遅め。
scoreboard players set @s gis_cooltime 200

scoreboard players set @s gis_skill_using 9
scoreboard players set @s gis_skill_using_count 1
tellraw @s "フルブラウン・ディグニティ！"
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1

#矢に追跡タグを付ける
execute as @e[type=arrow,limit=1,sort=nearest] run tag @s add shot_arrow_skill_5
execute as @e[type=arrow,limit=1,sort=nearest] run data modify entity @s Color set value 2851071
execute as @e[type=arrow,limit=1,sort=nearest] run data modify entity @s Item set value {id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}

