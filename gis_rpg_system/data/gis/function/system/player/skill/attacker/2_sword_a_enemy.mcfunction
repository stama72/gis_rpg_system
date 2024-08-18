#敵側の処理
execute as @e[type=#minecraft:enemy,distance=..1] run function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=sword_skill_2_player]",damage:"15"}

tag @s add gis_skill_attacked

tag @a[tag=sword_skill_2_player] remove sword_skill_2_player