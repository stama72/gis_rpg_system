#ハードディフェンス


scoreboard players set @s gis_cooltime 600

#20秒、耐性3、防御上昇1を付与

tellraw @s "ハードディフェンス！"
execute at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 1 1
