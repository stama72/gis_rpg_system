#ドロージャベリン
scoreboard players set @s gis_cooltime -1

scoreboard players set @s gis_skill_using 5
scoreboard players set @s gis_skill_using_count 1
tellraw @s "ドロージャベリン！"
execute at @s run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1

#トライデントに追跡タグを付ける
execute as @e[type=trident,limit=1,sort=nearest] run tag @s add thrown_trident_skill_5

