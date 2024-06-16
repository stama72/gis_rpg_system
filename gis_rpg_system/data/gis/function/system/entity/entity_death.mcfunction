execute if entity @s[type=#minecraft:slime_type] run function gis:system/entity/entity_death_event/death_slime_type_entity


execute unless entity @s[type=#minecraft:slime_type] run team join gis_entity_hp_0 @s
execute unless entity @s[type=#minecraft:slime_type] run tag @s add gis_kill
