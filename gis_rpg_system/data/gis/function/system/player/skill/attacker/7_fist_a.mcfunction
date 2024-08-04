#フィフスラッシュ
scoreboard players set @s gis_cooltime 100

scoreboard players set @s gis_skill_using 7
scoreboard players set @s gis_skill_using_count 1
tellraw @s "フィフスラッシュ！"
execute at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 1.3

scoreboard players set @s gis_skill_action_count 1

