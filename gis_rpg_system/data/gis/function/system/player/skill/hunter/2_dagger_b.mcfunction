#ポイズンダガー
scoreboard players set @s gis_cooltime 60
scoreboard players set @s gis_skill_using 2
scoreboard players set @s gis_skill_using_count 1

tellraw @s "ポイズンダガー！"
execute at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1

tag @s add dagger_skill_2_player
