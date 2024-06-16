
#kill_pause_count
execute if entity @s[tag=gis_kill_pause] store result score @s gis_temp_1 run data get entity @s PortalCooldown 1
execute if entity @s[tag=gis_kill_pause] run scoreboard players remove @s gis_temp_1 1
execute if entity @s[tag=gis_kill_pause] if score @s gis_temp_1 matches ..0 run tag @s remove gis_kill_pause
execute if entity @s[tag=gis_kill_pause] store result entity @s PortalCooldown long 1 run scoreboard players get @s gis_temp_1
#reset
execute if score @s gis_temp_1 matches -2147483648..2147483647 run scoreboard players reset @s gis_temp_1

#kill
execute unless entity @s[tag=gis_kill_pause] run kill @s
