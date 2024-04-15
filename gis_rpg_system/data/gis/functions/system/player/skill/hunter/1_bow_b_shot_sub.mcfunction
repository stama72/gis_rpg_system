
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.8
execute at @s run particle gust ~ ~ ~ 0 0 0 1 1 normal @a

execute at @s run summon arrow ~ ~ ~ {Owner:[I;0,0,0,0],damage:10d,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}}
execute at @s run summon arrow ~ ~ ~ {Owner:[I;0,0,0,0],damage:10d,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}}
execute at @s run summon arrow ~ ~ ~ {Owner:[I;0,0,0,0],damage:10d,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}}
execute at @s run summon arrow ~ ~ ~ {Owner:[I;0,0,0,0],damage:10d,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}}
execute at @s run summon arrow ~ ~ ~ {Owner:[I;0,0,0,0],damage:10d,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}}
execute at @s run summon arrow ~ ~ ~ {Owner:[I;0,0,0,0],damage:10d,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}}
execute at @s run summon arrow ~ ~ ~ {Owner:[I;0,0,0,0],damage:10d,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}}
execute at @s run summon arrow ~ ~ ~ {Owner:[I;0,0,0,0],damage:10d,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}}
execute at @s run summon arrow ~ ~ ~ {Owner:[I;0,0,0,0],damage:10d,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}}
execute at @s run summon arrow ~ ~ ~ {Owner:[I;0,0,0,0],damage:10d,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}',item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}}

#execute on origin at @s unless entity @e[distance=..20,type=#enemy] as @e[type=arrow,tag=shot_arrow_skill_1,sort=nearest,limit=1] at @s run spreadplayers ~ ~ 0.0 2.5 false @e[type=arrow,tag=arrow_skill_1_rain_shot]
#execute on origin at @s at @e[distance=..20,type=#enemy,sort=nearest,limit=1] run spreadplayers ~ ~ 0.0 2.5 false @e[type=arrow,tag=arrow_skill_1_rain_shot]

execute store result score #bow_skill_1_x gis_temp_1 run data get entity @s Pos[0] 10000
execute store result score #bow_skill_1_y gis_temp_1 run data get entity @s Pos[1] 10000
execute store result score #bow_skill_1_z gis_temp_1 run data get entity @s Pos[2] 10000
execute store result storage minecraft:gis_temp skill.hunter_1.owner.0 int 1 run data get entity @s Owner[0]
execute store result storage minecraft:gis_temp skill.hunter_1.owner.1 int 1 run data get entity @s Owner[1]
execute store result storage minecraft:gis_temp skill.hunter_1.owner.2 int 1 run data get entity @s Owner[2]
execute store result storage minecraft:gis_temp skill.hunter_1.owner.3 int 1 run data get entity @s Owner[3]
execute store result storage minecraft:gis_temp skill.hunter_1.crit int 1 run data get entity @s crit
execute as @e[type=arrow,tag=arrow_skill_1_rain_shot] at @s run function gis:system/player/skill/hunter/1_bow_b_shot_sub2

tag @s add gis_kill