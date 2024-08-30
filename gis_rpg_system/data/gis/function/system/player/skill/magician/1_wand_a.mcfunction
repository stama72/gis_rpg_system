#ファイアショット
scoreboard players set @s gis_cooltime 60

tellraw @s "ファイアショット！"
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1


tag @s add wand_skill_1_player

#プレイヤー地点から1m上にマーカーを置く
execute at @s run summon marker ~ ~1 ~ {UUID:[I;90,0,1,2]}
execute rotated as @s positioned as 0000005a-0000-0000-0000-000100000002 run tp 0000005a-0000-0000-0000-000100000002 ~ ~ ~ ~ ~

#ファイアショット召喚
execute at @s positioned ~ ~1 ~ rotated as 0000005a-0000-0000-0000-000100000002 run summon small_fireball ^ ^ ^0.5 {Silent:1b,Invulnerable:1b,PortalCooldown:300,Tags:["no_mob_convert","gis_kill","gis_kill_pause","fire_magician_skill_1"],CustomName:'"ファイアショット"'}
#オーナー指定
data modify entity @n[tag=fire_magician_skill_1] Owner set from entity @s UUID

#プレイヤー座標取得
execute store result score #player_x gis_temp_1 run data get entity @s Pos[0] 1000
execute store result score #player_y gis_temp_1 run data get entity @s Pos[1] 1000
scoreboard players add #player_y gis_temp_1 1000
execute store result score #player_z gis_temp_1 run data get entity @s Pos[2] 1000
#ファイアショットを前方へ飛ばす
execute at @s positioned ~ ~1 ~ rotated as 0000005a-0000-0000-0000-000100000002 positioned ^ ^ ^0.5 as @n[tag=fire_magician_skill_1] run function gis:system/player/skill/magician/magical_shot_move

kill 0000005a-0000-0000-0000-000100000002
tag @e[tag=wand_skill_1_enemy] remove wand_skill_1_enemy
tag @s remove wand_skill_1_player