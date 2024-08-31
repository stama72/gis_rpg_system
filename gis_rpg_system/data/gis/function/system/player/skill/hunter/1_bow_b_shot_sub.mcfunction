
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.8
execute at @s run particle gust ~ ~ ~ 0 0 0 1 1 normal @a

#summon extra arrow
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}

execute at @s run summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],damage:11d,PierceLevel:3b,Motion:[0.0,-0.5,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"color":"#2B80FF","italic":false,"text":"アローレイン"}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}

#arrow NBT
execute store result score #bow_skill_1_x gis_temp_1 run data get entity @s Pos[0] 10000
execute store result score #bow_skill_1_y gis_temp_1 run data get entity @s Pos[1] 10000
execute store result score #bow_skill_1_z gis_temp_1 run data get entity @s Pos[2] 10000
execute at @s as @e[distance=..20,type=#enemy,sort=nearest,limit=1] store result score #bow_skill_1_x gis_temp_1 run data get entity @s Pos[0] 10000
execute at @s as @e[distance=..20,type=#enemy,sort=nearest,limit=1] store result score #bow_skill_1_z gis_temp_1 run data get entity @s Pos[2] 10000
execute as @s on origin run data modify storage minecraft:gis_temp skill.hunter_1.owner set from entity @s UUID
execute store result storage minecraft:gis_temp skill.hunter_1.crit int 1 run data get entity @s crit
execute as @e[type=arrow,tag=arrow_skill_1_rain_shot] at @s run function gis:system/player/skill/hunter/1_bow_b_shot_sub2

tag @s add gis_kill