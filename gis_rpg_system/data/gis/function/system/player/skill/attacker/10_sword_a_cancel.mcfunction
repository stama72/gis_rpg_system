#フォイア・ヴァッサ
#1秒溜めてたら発動
execute if score @s gis_skill_using_count matches 20.. run return run function gis:system/player/skill/attacker/10_sword_a_finish

#でなきゃリセット
scoreboard players set @s gis_cooltime 20

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0

execute at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1