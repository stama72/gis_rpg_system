
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.8
execute at @s run particle gust ~ ~ ~ 0 0 0 1 1 normal @a

execute at @s run summon arrow ~ ~ ~ {pickup:0b,damage:10d,crit:1b,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}'}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,damage:10d,crit:1b,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}'}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,damage:10d,crit:1b,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}'}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,damage:10d,crit:1b,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}'}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,damage:10d,crit:1b,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}'}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,damage:10d,crit:1b,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}'}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,damage:10d,crit:1b,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}'}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,damage:10d,crit:1b,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}'}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,damage:10d,crit:1b,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}'}
execute at @s run summon arrow ~ ~ ~ {pickup:0b,damage:10d,crit:1b,PierceLevel:3b,Color:2851071,Motion:[0.0,-1.0,0.0],Rotation:[0F,-90F],Tags:["arrow_skill_1_rain_shot"],CustomName:'{"text":"アローレイン","color":"#2B80FF","italic":false}'}

execute on origin at @s unless entity @e[distance=..20,type=#enemy] as @e[type=arrow,tag=shot_arrow_skill_1,sort=nearest,limit=1] at @s run spreadplayers ~ ~ 0.05 2.5 false @e[type=arrow,tag=arrow_skill_1_rain_shot]

execute on origin at @s at @e[distance=..20,type=#enemy,sort=nearest,limit=1] run spreadplayers ~ ~ 0 2.5 false @e[type=arrow,tag=arrow_skill_1_rain_shot]

execute as @e[type=arrow,tag=arrow_skill_1_rain_shot] at @s positioned ~ ~10 ~ run teleport @s ~ ~ ~
execute as @e[type=arrow,tag=arrow_skill_1_rain_shot] run data modify entity @s Motion[1] set value -1.0

tag @s add gis_kill