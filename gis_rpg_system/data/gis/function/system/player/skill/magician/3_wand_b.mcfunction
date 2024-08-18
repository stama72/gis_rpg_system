#ロッククラッシュ
scoreboard players set @s gis_cooltime 100

tellraw @s "ロッククラッシュ！"
playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 1 1

tag @s add wand_skill_3_player

execute at @s at @n[type=#enemy,distance=..10] as @e[type=#enemy,distance=..1.5] run function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=wand_skill_3_player]",damage:"30"}

#summon item_display ^ ^ ^ {PortalCooldown:18,Tags:["gis_mob","gis_kill","gis_ridedown","gis_boss_n_4"],Rotation:[0F,-90F],Tags:["gis_mob","gis_rideup"],transformation:{left_rotation:[0.3826f,0f,0f,0.9238f],right_rotation:[0f,0f,0.3826f,0.9238f],translation:[0f,0f,-0.5f],scale:[2f,2f,2f]},item:{id:"minecraft:dripstone_block"},CustomName:'{"text":"ロッククラッシュ"}'}

execute at @s at @n[type=#enemy,distance=..10] positioned ~ ~4 ~ run summon minecraft:magma_cube ^ ^ ^ {PortalCooldown:18,Health:1000f,Size:0,wasOnGround:1b,Tags:["gis_mob","gis_kill","gis_ridedown"],Passengers:[{id:"minecraft:item_display",Motion:[0F,-0.5F,0F],Rotation:[0F,-90F],Tags:["gis_rideup"],transformation:{left_rotation:[0.3826f,0f,0f,0.9238f],right_rotation:[0f,0f,0.3826f,0.9238f],translation:[0f,0f,-0.5f],scale:[2f,2f,2f]},item:{id:"minecraft:dripstone_block",count:1b}}],CustomName:'{"text":"ロッククラッシュ"}'}
