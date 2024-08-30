#ウィンドエッジ
#当たった敵が実行者

#ダメージ
#execute at @s as @e[type=#enemy,distance=..3.5] run function gis:system/player/skill/damage_with_magic_e {player:"@p[tag=fire_skill_7_player]",damage:"70"}
#execute at @s as @e[type=#enemy,distance=..3.5] run data modify entity @s Fire set value 200s
function gis:system/player/skill/damage_with_magic_e {player:"@p[tag=fire_skill_7_player]",damage:"70"}
data modify entity @s Fire set value 200s