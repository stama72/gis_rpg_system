#convert
execute if entity @s[nbt=!{CustomNameVisible:1b}] run function gis:system/entity/convert_mob_into_gismob

#damage
execute if entity @s[nbt={HurtTime:9s}] run function gis:system/entity/entity_no_player_damage



#test
