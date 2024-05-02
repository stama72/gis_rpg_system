#フルブラウン・ディグニティ
#直進・加速し、貫通する矢。最初は少し遅め。

#矢に追跡タグを付ける
tag @s add shot_arrow_skill_9
tag @s add gis_kill
tag @s add gis_kill_pause
data modify entity @s PortalCooldown set value 400
data modify entity @s Item set value {id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}
#data modify entity @s Color set value 
data modify entity @s pickup set value 0b
data modify entity @s PierceLevel set value 5b

execute store result entity @s Motion[0] double 0.00003 run data get entity @s Motion[0] 10000
execute store result score #skill_hunter9_y gis_temp_1 run data get entity @s Pos[1] 10000
execute if score #skill_hunter9_y gis_temp_1 matches ..500 run scoreboard players set #skill_hunter9_y gis_temp_1 500
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #skill_hunter9_y gis_temp_1
execute store result entity @s Motion[2] double 0.00003 run data get entity @s Motion[2] 10000


