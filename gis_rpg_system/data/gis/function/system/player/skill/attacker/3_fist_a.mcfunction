#トライコンボ
scoreboard players set @s gis_cooltime 60

scoreboard players set @s gis_skill_using 3
scoreboard players set @s gis_skill_using_count 1
tellraw @s "トライコンボ！"
execute at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 0.9 1.2

scoreboard players set @s gis_skill_action_count 1


tag @s add fist_skill_3_player