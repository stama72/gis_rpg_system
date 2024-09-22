
#@sはmob

tag @s add gis_player_attacker_check

$execute as $(player) run scoreboard players set @s gis_damage $(damage)
$execute as $(player) run scoreboard players operation @s gis_damage *= #100 gis_const
$execute as $(player) at @s run function gis:system/damage/e_to_p_physical
$execute as $(player) run damage @s 0 magic

tag @s remove gis_player_attacker_check
