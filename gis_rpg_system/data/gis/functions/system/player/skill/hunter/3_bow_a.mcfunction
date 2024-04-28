#フライヤーウォール
#飛び道具を弾くオーラを纏う矢。矢はゆっくりと飛ぶ。
scoreboard players set @s gis_cooltime 100

tellraw @s "フライヤーウォール！"
execute at @s run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1

#矢に追跡タグを付ける
#矢に透明無敵スライムを乗せる

execute as @e[type=arrow,limit=1,sort=nearest] run tag @s add shot_arrow_skill_3
execute as @e[type=arrow,limit=1,sort=nearest] run tag @s add gis_kill
execute as @e[type=arrow,limit=1,sort=nearest] run tag @s add gis_kill_pause
execute as @e[type=arrow,limit=1,sort=nearest] run data modify entity @s PortalCooldown set value 400
execute as @e[type=arrow,limit=1,sort=nearest] run data modify entity @s Color set value 2851071
execute as @e[type=arrow,limit=1,sort=nearest] run data modify entity @s Item set value {id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2851071}}}
execute as @e[type=arrow,limit=1,sort=nearest] run data modify entity @s Color set value 2851071

