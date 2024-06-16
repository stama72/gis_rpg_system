advancement revoke @s only gis:player_system_trigger/hit_trident_skill3
#スロウダウン
scoreboard players set @s gis_cooltime 100

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0
tellraw @s "スロウダウンがhit！"

tag @s add trident_skill_3_player
#トライデント周辺の敵への処理
execute as @e[type=trident,tag=thrown_trident_skill_3] at @s on origin as @s[tag=trident_skill_3_player] as @e[type=trident,tag=thrown_trident_skill_3,sort=nearest,limit=1] run function gis:system/player/skill/tank/3_trident_a_hit_sub
tag @s remove trident_skill_3_player