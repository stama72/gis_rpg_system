#アローレイン

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0

execute as @e[type=arrow,tag=arrow_skill_1_rain_shot,nbt={inGround:true}] run kill @s

