#ペネトレイト
scoreboard players set @s gis_cooltime 100

tellraw @s "ペネトレイト！"

#playerの位置にマーカー
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,2,1]}
execute at @s rotated as @s run tp 0000005a-0000-0000-0000-000200000001 ~ ~ ~ ~ ~

execute as @e[type=#minecraft:enemy,distance=..10] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"nbt":"{HurtTime:10s}"}} run function gis:system/player/skill/tank/1_trident_b_enemy

