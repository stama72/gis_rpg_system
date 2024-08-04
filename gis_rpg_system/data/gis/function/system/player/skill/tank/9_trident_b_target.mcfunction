#ナビゲイトポラリス
#@sは攻撃された敵
#プレイヤーは@p[tag=trident_skill_1_player]

#マーカー
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,2,2]}
execute at @s rotated as @p[tag=trident_skill_9_player] positioned ^ ^ ^-0.01 run tp 0000005a-0000-0000-0000-000200000002 ~ ~ ~ ~ ~

#ダメージ
execute at @s as @e[type=#minecraft:enemy,distance=..5] run function gis:system/player/skill/tank/9_trident_b_enemy


#パーティクル




kill 0000005a-0000-0000-0000-000200000002
tag @s add gis_skill_attacked


tag @a[tag=trident_skill_9_player] remove trident_skill_9_player