#シールドバッシュ

scoreboard players set @s gis_cooltime 80

tellraw @s "シールドバッシュ！"
execute at @s run playsound minecraft:item.shield.block master @a ~ ~ ~ 1 1

#周囲の敵を吹っ飛ばしながらダメージを与える。
