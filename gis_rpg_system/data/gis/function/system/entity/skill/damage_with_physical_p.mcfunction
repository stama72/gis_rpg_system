
#@sはプレイヤー

$tag $(enemy) add gis_player_attacker_check

$scoreboard players set @s gis_damage $(damage)
scoreboard players operation @s gis_damage *= #100 gis_const
execute at @s run function gis:system/damage/e_to_p_physical
damage @s 0 magic
say enemy physical skill

$tag $(enemy) remove gis_player_attacker_check