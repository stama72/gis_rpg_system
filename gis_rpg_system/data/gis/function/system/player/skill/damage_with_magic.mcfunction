
#@sはプレイヤー

tag @s add gis_player_attacker_check

$execute as $(enemy) run scoreboard players set @s gis_damage $(damage)
$execute as $(enemy) run scoreboard players operation @s gis_damage *= #100 gis_const
$execute as $(enemy) at @s run function gis:system/entity/magic_damage

tag @s remove gis_player_attacker_check
