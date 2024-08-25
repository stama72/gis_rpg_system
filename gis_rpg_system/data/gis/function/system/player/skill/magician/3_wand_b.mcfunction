#ロッククラッシュ
scoreboard players set @s gis_cooltime 100

tellraw @s "ロッククラッシュ！"
playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 1 1

tag @s add wand_skill_3_player

execute at @s at @n[type=#enemy,distance=..10] as @e[type=#enemy,distance=..1.5] run function gis:system/player/skill/damage_with_magic_e {player:"@p[tag=wand_skill_3_player]",damage:"30"}

#summon item_display ^ ^ ^ {PortalCooldown:18,Tags:["gis_mob","gis_kill","gis_ridedown","gis_boss_n_4"],Rotation:[0F,-90F],Tags:["gis_mob","gis_rideup"],transformation:{left_rotation:[0.3826f,0f,0f,0.9238f],right_rotation:[0f,0f,0.3826f,0.9238f],translation:[0f,0f,-0.5f],scale:[2f,2f,2f]},item:{id:"minecraft:dripstone_block"},CustomName:'{"text":"ロッククラッシュ"}'}

execute at @s at @n[type=#enemy,distance=..10] positioned ~ ~4 ~ run summon vex ^ ^ ^ {Silent:1b,Invulnerable:1b,PortalCooldown:18,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["no_mob_convert","gis_kill","gis_kill_pause"],Motion:[0.0,-0.5,0.0],Passengers:[{id:"minecraft:item_display",Rotation:[0F,-90F],Tags:["no_mob_convert","ride_up_display"],transformation:{left_rotation:[0.3826f,0f,0f,0.9238f],right_rotation:[0f,0f,0.3826f,0.9238f],translation:[0f,0f,-0.5f],scale:[2f,2f,2f]},item:{id:"minecraft:dripstone_block",count:1}}],CustomName:'"ロッククラッシュ"',active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:1000,show_particles:0b}],attributes:[{id:"minecraft:generic.scale",base:0}]}
