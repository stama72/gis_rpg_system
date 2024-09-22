
#@sはプレイヤー

tag @s add gis_player_attacker_check

$execute as $(enemy) run scoreboard players set @s gis_damage $(damage)
$execute as $(enemy) run scoreboard players operation @s gis_damage *= #100 gis_const
$execute as $(enemy) at @s run function gis:system/damage/p_to_e_physical
$execute as $(enemy) run damage @s 0 magic
$execute as $(enemy) run say player physical skill

tag @s remove gis_player_attacker_check