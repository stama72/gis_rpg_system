

#まずはスキルそのものの実装を優先し、ダメージ処理の実装は一旦後回しにする。

#殴りのskill trigger
#execute if score @s gis_job matches 1 if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{trident:1b}}] run function gis:system/system_trigger/hurt_entity_with_trident
#execute if score @s gis_job matches 2 if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{sword:1b}}] run function gis:system/system_trigger/hurt_entity_with_sword
#execute if score @s gis_job matches 2 if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{fist:1b}}] run function gis:system/system_trigger/hurt_entity_with_fist0
#execute if score @s gis_job matches 3 if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{dagger:1b}}] run function gis:system/system_trigger/hurt_entity_with_dagger

#tag_set
tag @s add gis_player_attacker_check

#element tag set
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{element:{fire:1b}}] run tag @s add gis_player_attacker_by_fire_element
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{element:{water:1b}}] run tag @s add gis_player_attacker_by_water_element
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{element:{air:1b}}] run tag @s add gis_player_attacker_by_air_element
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{element:{earth:1b}}] run tag @s add gis_player_attacker_by_earth_element


#check_target
execute as @e[type=!#minecraft:no_mob,distance=..100] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"nbt":"{HurtTime:10s}"}} run function gis:system/player/player_attack_entity/target_check

#attack_event

#tag_reset
tag @s remove gis_player_attacker_check

#element tag reset
tag @s remove gis_player_attacker_by_fire_element
tag @s remove gis_player_attacker_by_water_element
tag @s remove gis_player_attacker_by_air_element
tag @s remove gis_player_attacker_by_earth_element
