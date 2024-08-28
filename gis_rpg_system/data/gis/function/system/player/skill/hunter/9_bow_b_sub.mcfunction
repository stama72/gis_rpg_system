#フルブラウン・ディグニティ
#直進・加速し、貫通する矢。最初は少し遅め。

#矢に追跡タグを付ける
tag @s add shot_arrow_skill_9
tag @s add gis_kill
tag @s add gis_kill_pause
data modify entity @s PortalCooldown set value 200
data modify entity @s Item set value {id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}
#data modify entity @s Color set value 
data modify entity @s pickup set value 0b
data modify entity @s PierceLevel set value 5b
data modify entity @s NoGravity set value 1b

execute store result entity @s Motion[0] double 0.00003 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[1] double 0.00003 run data get entity @s Motion[1] 10000
execute store result entity @s Motion[2] double 0.00003 run data get entity @s Motion[2] 10000


