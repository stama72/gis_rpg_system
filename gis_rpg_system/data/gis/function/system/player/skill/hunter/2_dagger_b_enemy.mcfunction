#ポイズンダガー
execute at @s run particle dust{color:[0.173,0.639,0.000],scale:1} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 20 normal @a

effect give @s poison 10 0 false
function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=dagger_skill_2_player]",damage:"20"}

tag @s add gis_skill_attacked
tag @a remove dagger_skill_2_player