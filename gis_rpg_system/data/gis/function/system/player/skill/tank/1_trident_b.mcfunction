#ペネトレイト
scoreboard players set @s gis_cooltime 100
scoreboard players set @s gis_skill_using 1
scoreboard players set @s gis_skill_using_count 1

tellraw @s "ペネトレイト！"

#playerの位置にマーカー
#execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,2,1]}
#execute at @s rotated as @s run tp 0000005a-0000-0000-0000-000200000001 ~ ~ ~ ~ ~

playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.8

tag @s add trident_skill_1_player
