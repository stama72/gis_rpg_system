#ビヘッドダガー
scoreboard players set @s gis_cooltime 100
scoreboard players set @s gis_skill_using 8
scoreboard players set @s gis_skill_using_count 1

tellraw @s "ビヘッドダガー！"

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.2

tag @s add dagger_skill_8_player
