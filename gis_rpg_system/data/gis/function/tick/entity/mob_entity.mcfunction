#convert
execute if entity @s[nbt=!{CustomNameVisible:1b}] unless entity @s[tag=no_mob_convert] run function gis:system/entity/convert_mob_into_gismob

#damage
execute if entity @s[nbt={HurtTime:9s}] unless entity @s[tag=no_mob_convert] run function gis:tick/entity/damaged_entity
execute as @s[tag=gis_skill_attacked] run function gis:system/player/player_attack_entity/attack_reset


#test
