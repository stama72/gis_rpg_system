##damage_get
#temp
scoreboard players operation @s gis_damage = @p[tag=gis_player_attacker_check] gis_player_status_atk

#damage_calculate
function gis:system/entity/entity_damage_calculate

##damage_set
#hp get
function gis:system/entity/entity_health_input

#hp remove
scoreboard players operation @s gis_health -= @s gis_damage

#hp > 0 living
execute if score @s gis_health matches 1.. run function gis:system/entity/entity_hp_set

#hp < 0 death
execute if score @s gis_health matches ..0 run function gis:system/entity/entity_death

#damage popup
scoreboard players operation #gis_temp gis_damage = @s gis_damage
execute summon minecraft:text_display run function gis:system/entity/damage_popup
scoreboard players reset #gis_temp gis_damage


#reset
scoreboard players reset @s gis_damage
scoreboard players reset @s gis_health
data modify entity @s HurtTime set value 2s
