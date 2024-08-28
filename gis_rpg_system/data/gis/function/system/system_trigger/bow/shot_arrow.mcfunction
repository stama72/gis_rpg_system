#弓で矢を放った時(エンチャ由来)
#放たれた矢が実行者
tag @s add latest_shot_arrow
execute on origin run function gis:system/system_trigger/bow/shoot_sub
tag @s remove latest_shot_arrow