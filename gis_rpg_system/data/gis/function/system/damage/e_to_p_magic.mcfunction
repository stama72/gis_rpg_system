#実行者はプレイヤー
##damage_get
execute if entity @s[tag=no_mob_convert] run return 0

#status
#scoreboard players operation #defence gis_temp_1 = @s gis_player_status_def
execute store result score #defence gis_temp_1 run function gis:system/player/status/get_res

#damage_calculate
function gis:system/damage/e_to_p_calculate

say enemy magical skill

##damage_set
#hp remove
scoreboard players operation @s gis_health -= @s gis_damage

#hp > 0 living
#execute if score @s gis_health matches 1.. run function gis:system/damage/entity_hp_set

#hp < 0 death
execute if score @s gis_health matches ..0 run damage @s 1000 mob_attack by @n[tag=gis_player_attacker_check]

#damage popup
scoreboard players operation #gis_temp gis_damage = @s gis_damage
execute summon minecraft:text_display run function gis:system/damage/damage_popup
scoreboard players reset #gis_temp gis_damage


#reset
scoreboard players reset @s gis_damage
