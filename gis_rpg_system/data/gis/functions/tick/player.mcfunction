execute if entity @s[advancements={gis:player_system_trigger/hurt_entity=true}] run advancement revoke @s only gis:player_system_trigger/hurt_entity

execute if score @s gis_cooltime matches 1.. run scoreboard players remove @s gis_cooltime 1

execute if score @s gis_player_left_game matches 1.. run function gis:tick/on_login
