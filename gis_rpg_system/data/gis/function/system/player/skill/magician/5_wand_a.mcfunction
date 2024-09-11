#ウィンドエッジ
scoreboard players set @s gis_cooltime 20

tellraw @s "ウィンドエッジ！"
playsound entity.wind_charge.throw master @a ~ ~ ~ 1 1

tag @s add wand_skill_5_player

#プレイヤー地点から1m上にマーカーを置く
execute at @s run summon marker ~ ~1 ~ {UUID:[I;90,0,1,2]}
execute rotated as @s positioned as 0000005a-0000-0000-0000-000100000002 run tp 0000005a-0000-0000-0000-000100000002 ~ ~ ~ ~ ~
#前方左右30度以内に敵を探し、いたらマーカーをそちらに向ける
execute at 0000005a-0000-0000-0000-000100000002 as @e[type=#enemy,distance=..15] run function gis:system/player/skill/magician/5_wand_a_enemy
execute at 0000005a-0000-0000-0000-000100000002 facing entity @n[tag=wand_skill_5_enemy] eyes run tp 0000005a-0000-0000-0000-000100000002 ~ ~ ~ ~ ~

#ウィンドチャージ召喚
execute at @s positioned ~ ~1 ~ rotated as 0000005a-0000-0000-0000-000100000002 run summon wind_charge ^ ^ ^1 {Silent:1b,Invulnerable:1b,PortalCooldown:300,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["no_mob_convert","gis_kill","gis_kill_pause","wind_magician_skill_5"],CustomName:'"ウィンドエッジ"',active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:1000,show_particles:0b}],attributes:[{id:"minecraft:generic.scale",base:1}]}
#オーナー指定
data modify entity @n[tag=wind_magician_skill_5] Owner set from entity @s UUID

#プレイヤー座標取得
execute store result score #player_x gis_temp_1 run data get entity @s Pos[0] 1000
execute store result score #player_y gis_temp_1 run data get entity @s Pos[1] 1000
scoreboard players add #player_y gis_temp_1 1000
execute store result score #player_z gis_temp_1 run data get entity @s Pos[2] 1000
#ウィンドチャージを前方へ飛ばす
execute at @s positioned ~ ~1 ~ rotated as 0000005a-0000-0000-0000-000100000002 positioned ^ ^ ^1 as @n[tag=wind_magician_skill_5] run function gis:system/player/skill/magician/magical_shot_move

kill 0000005a-0000-0000-0000-000100000002
tag @e[tag=wand_skill_5_enemy] remove wand_skill_5_enemy
tag @s remove wand_skill_5_player