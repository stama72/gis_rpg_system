#ポイズンダガー
scoreboard players set @s gis_cooltime 60
scoreboard players set @s gis_skill_using 2
scoreboard players set @s gis_skill_using_count 1

tellraw @s "ポイズンダガー！"
execute at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1

#execute as @e[type=#minecraft:enemy,distance=..10] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"nbt":"{HurtTime:10s}"}} run function gis:system/player/skill/hunter/2_dagger_b_enemy

