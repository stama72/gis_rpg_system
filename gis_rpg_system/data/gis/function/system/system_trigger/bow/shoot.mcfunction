#弓で矢を放った時(エンチャ由来)
#実行者はプレイヤー

scoreboard players set @s gis_shoot_arrow 0

function gis:system/system_trigger/bow/shoot_sub

tag @n[tag=latest_shot_arrow] remove latest_shot_arrow
