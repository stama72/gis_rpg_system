#ファランクスシフト
#持続する防御フィールド。盾を構えている間展開。

#初回
scoreboard players set @s gis_cooltime -1
say "ファランクスシフト！"
execute at @s run playsound block.enchantment_table.use master @s ~ ~ ~ 1 1

scoreboard players set @s gis_skill_using_count 1
scoreboard players set @s gis_skill_using 6
