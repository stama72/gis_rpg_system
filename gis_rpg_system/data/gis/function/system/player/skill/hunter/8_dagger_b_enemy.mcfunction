#ビヘッドダガー
#敵mobが@s

#current hp
execute store result score #hp_temp gis_temp_1 run data get entity @s HandDropChances.[0] -100
scoreboard players remove #hp_temp gis_temp_1 100000

#max hp
execute store result score #hp_temp gis_temp_2 run data get entity @s HandDropChances.[1] -100
scoreboard players remove #hp_temp gis_temp_2 100000

scoreboard players operation #hp_temp gis_temp_1 *= #2 gis_const

#damage
execute store result storage minecraft:gis_temp skill.dagger_8.damage int 1 run scoreboard players get #hp_temp gis_temp_2
data modify storage minecraft:gis_temp skill.dagger_8.player set value "@p[tag=dagger_skill_8_player]"

execute if score #hp_temp gis_temp_1 <= #hp_temp gis_temp_2 run function gis:system/player/skill/damage_with_physical_e with storage gis_temp skill.dagger_8
execute if score #hp_temp gis_temp_1 > #hp_temp gis_temp_2 run function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=dagger_skill_8_player]",damage:"10"}

execute if score #hp_temp gis_temp_1 <= #hp_temp gis_temp_2 at @s run playsound entity.item.break master @a ~ ~ ~ 1 1
execute if score #hp_temp gis_temp_1 <= #hp_temp gis_temp_2 at @s run particle dust{color:[0.741,0.098,0.000],scale:1} ~ ~1.5 ~ 0.3 0.2 0.3 0.05 20 normal @a
execute if score #hp_temp gis_temp_1 > #hp_temp gis_temp_2 at @s run particle dust{color:[0.812,0.294,0.137],scale:1} ~ ~1.5 ~ 0.3 0.2 0.3 0.05 10 normal @a


tag @s add gis_skill_attacked
tag @a remove dagger_skill_8_player
