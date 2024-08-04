
#@sは敵mob

$tag $(player) add gis_player_attacker_check

$scoreboard players set @s gis_damage $(damage)
scoreboard players operation @s gis_damage *= #100 gis_const
execute at @s run function gis:system/entity/entity_player_damage
damage @s 0 magic
say player physical skill

$tag $(player) remove gis_player_attacker_check