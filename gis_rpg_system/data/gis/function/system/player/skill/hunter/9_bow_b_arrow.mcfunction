#フルブラウン・ディグニティ
#直進・加速し、貫通する矢。最初は少し遅め。

execute on origin unless score @s gis_job matches 3 run return 0
execute on origin unless score @s gis_skill_using matches 9 run return 0
execute on origin if score @s gis_skill_using_count matches 40.. run return 0

execute on origin run scoreboard players operation #arrow_skill_9 gis_temp_1 = @s gis_skill_using_count
scoreboard players operation #arrow_skill_9 gis_temp_1 %= #5 gis_const
execute unless score #arrow_skill_9 gis_temp_1 matches 0 run return 0

execute at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.2

execute store result entity @s Motion[0] double 0.0002 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[1] double 0.0002 run data get entity @s Motion[1] 10000
execute store result entity @s Motion[2] double 0.0002 run data get entity @s Motion[2] 10000





