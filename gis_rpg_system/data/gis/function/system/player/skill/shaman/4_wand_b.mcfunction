#イヴィネットワーク
scoreboard players set @s gis_cooltime 150
#scoreboard players set @s gis_skill_using 1
#scoreboard players set @s gis_skill_using_count 1

tellraw @s "イヴィネットワーク！"

execute at @s at @n[type=#enemy,distance=..15] positioned ~ ~1 ~ run summon minecraft:magma_cube ^ ^ ^ {PortalCooldown:18,Health:1000f,Size:0,wasOnGround:1b,Tags:["gis_mob","gis_kill","gis_ridedown"],Passengers:[{id:"minecraft:item_display",Motion:[0F,0F,0F],Rotation:[0F,-90F],Tags:["gis_rideup"],transformation:{left_rotation:[0.3826f,0f,0f,0.9238f],right_rotation:[0f,0f,0.3826f,0.9238f],translation:[0f,0f,-0.5f],scale:[2f,2f,2f]},item:{id:"minecraft:dripstone_block",count:1b}}],CustomName:'{"text":"イヴィネットワーク"}'}

