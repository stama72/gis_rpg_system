#ビヘッドダガー
scoreboard players set @s gis_cooltime 100
scoreboard players set @s gis_skill_using 8
scoreboard players set @s gis_skill_using_count 1

tellraw @s "ビヘッドダガー！"
execute at @s run playsound entity.item.break master @a ~ ~ ~ 1 1

#敵mob
#execute as @e[type=#minecraft:enemy,distance=..10] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"nbt":"{HurtTime:10s}"}} run function gis:system/player/skill/hunter/8_dagger_b_enemy


