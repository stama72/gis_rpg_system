#実行者は敵
##damage_get
execute if entity @s[tag=no_mob_convert] run return 0

#status
scoreboard players operation #attack gis_temp_1 = @p[tag=gis_player_attacker_check] gis_player_status_int

scoreboard players set #defence gis_temp_1 0
execute store result score #defence gis_temp_1 run data get entity @s ArmorItems[3].components."minecraft:enchantments".levels."gis:rpg_status_res"

say player magical skill

#damage_calculate
function gis:system/damage/p_to_e_calculate

##damage_set
#hp get
function gis:system/damage/entity_health_input

#hp remove
scoreboard players operation @s gis_health -= @s gis_damage

#hp > 0 living
execute if score @s gis_health matches 1.. run function gis:system/damage/entity_hp_set

#hp < 0 death
execute if score @s gis_health matches ..0 run function gis:system/damage/entity_death

#damage popup
scoreboard players operation #gis_temp gis_damage = @s gis_damage
execute summon minecraft:text_display run function gis:system/damage/damage_popup
scoreboard players reset #gis_temp gis_damage


#reset
scoreboard players reset @s gis_damage
scoreboard players reset @s gis_health
data modify entity @s HurtTime set value 2s
