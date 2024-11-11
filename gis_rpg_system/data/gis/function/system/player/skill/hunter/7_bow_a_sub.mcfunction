#リザレクトバード
#火の鳥のオーラを纏う矢。矢はゆっくりと飛ぶ。

#矢に追跡タグを付ける
tag @s add shot_arrow_skill_7
tag @s add gis_kill
tag @s add gis_kill_pause
data modify entity @s PortalCooldown set value 400
data modify entity @s Item set value {id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}
#data modify entity @s Color set value 
data modify entity @s PierceLevel set value 10b
data modify entity @s pickup set value 0b
data modify entity @s NoGravity set value 1b

execute store result entity @s Motion[0] double 0.00003 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[1] double 0.00003 run data get entity @s Motion[1] 10000
execute store result entity @s Motion[2] double 0.00003 run data get entity @s Motion[2] 10000


#演出要素としてファントムを乗せる
execute at @s run summon phantom ~ ~ ~ {Fire:10000,Silent:1b,NoAI:1b,Size:0,Tags:["no_mob_convert","ride_up_display"],attributes:[{id:"scale",base:0.8}],active_effects:[{id:"minecraft:resistance",amplifier:5,duration:10000,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1,duration:10000,show_particles:0b}]}

execute at @s on origin rotated as @s as @n[type=phantom,tag=ride_up_display] run teleport @s ~ ~ ~ ~ ~

execute store result score #xpos gis_temp_1 run data get entity @n[type=phantom,tag=ride_up_display] Rotation[1] 100
scoreboard players set #xpos gis_temp_2 0
scoreboard players operation #xpos gis_temp_2 -= #xpos gis_temp_1
execute store result entity @n[type=phantom,tag=ride_up_display] Rotation[1] float 0.01 run scoreboard players get #xpos gis_temp_2

ride @n[type=phantom,tag=ride_up_display] mount @s
