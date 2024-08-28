
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.8
execute at @s run particle gust ~ ~ ~ 0 0 0 1 1 normal @a

#summon arrow
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_5_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アライズ"}',Potion:"minecraft:water",item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}

#arrow NBT
execute store result score #bow_skill_5_x gis_temp_1 run data get entity @s Pos[0] 10000
execute store result score #bow_skill_5_y gis_temp_1 run data get entity @s Pos[1] 10000
execute store result score #bow_skill_5_z gis_temp_1 run data get entity @s Pos[2] 10000
execute at @s as @e[distance=..15,type=#enemy,sort=nearest,limit=1] store result score #bow_skill_5_x gis_temp_1 run data get entity @s Pos[0] 10000
execute at @s as @e[distance=..15,type=#enemy,sort=nearest,limit=1] store result score #bow_skill_5_z gis_temp_1 run data get entity @s Pos[2] 10000

execute store result storage minecraft:gis_temp skill.hunter_5.owner.0 int 1 run data get entity @s Owner[0]
execute store result storage minecraft:gis_temp skill.hunter_5.owner.1 int 1 run data get entity @s Owner[1]
execute store result storage minecraft:gis_temp skill.hunter_5.owner.2 int 1 run data get entity @s Owner[2]
execute store result storage minecraft:gis_temp skill.hunter_5.owner.3 int 1 run data get entity @s Owner[3]
execute store result storage minecraft:gis_temp skill.hunter_5.crit int 1 run data get entity @s crit

execute as @e[type=arrow,tag=arrow_skill_5_rain_shot] at @s run function gis:system/player/skill/hunter/5_bow_b_shot_sub2
tag @s add gis_kill
