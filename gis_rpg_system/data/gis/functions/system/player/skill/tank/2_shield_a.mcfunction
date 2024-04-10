#ハードディフェンス


scoreboard players set @s gis_cooltime 600

#20秒、耐性3、防御上昇1を付与

tellraw @s "ハードディフェンス！"
effect give @s resistance 20 2 false
execute at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 1 1
