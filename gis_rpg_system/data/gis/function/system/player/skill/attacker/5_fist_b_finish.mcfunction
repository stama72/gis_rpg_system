#スピリットロア
scoreboard players set @s gis_cooltime 500

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0


tellraw @s "スピリットロア！"

#敵にデバフ
execute at @s as @e[distance=..10,type=#minecraft:enemy] run effect give @s slowness 2 4 false
execute at @s as @e[distance=..10,type=#minecraft:enemy] run particle trial_spawner_detection_ominous ~ ~1.8 ~ 0.08 0.03 0.08 0 10 normal @a
#自分にバフ
effect give @s strength 20 1 false
execute at @s run particle trial_spawner_detection ~ ~1.8 ~ 0.08 0.03 0.08 0 10 normal @a
execute at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 1 1
