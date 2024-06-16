#ペネトレイト

#パーティクル

execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,2,2]}
execute at @s rotated as @s run tp 0000005a-0000-0000-0000-000200000002 ~ ~ ~ ~ ~


#プレイヤー～敵
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,2,3]}

#ダメージ判定
execute at @s rotated as 0000005a-0000-0000-0000-000200000001 positioned ~ ~1.2 ~ positioned ^ ^ ^-0.2 run tp 0000005a-0000-0000-0000-000200000002 ~ ~ ~ ~ ~


