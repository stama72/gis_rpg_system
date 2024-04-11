
advancement revoke @s only gis:player_system_trigger/use_trident

#トライデントを構えた時
execute if score @s gis_trident_using_count matches 0 run scoreboard players set @s gis_trident_using_count_sub 0
scoreboard players add @s gis_trident_using_count 1