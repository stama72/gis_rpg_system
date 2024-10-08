#set storage


##create score

#player input

#player_status
scoreboard objectives add gis_health dummy
scoreboard objectives add gis_player_health health "player minecraft health"
scoreboard objectives add gis_max_health dummy "max health"
scoreboard objectives add gis_player_hp_percent dummy

scoreboard objectives add gis_player_status_atk dummy "attack"
scoreboard objectives add gis_player_status_def dummy "defense"
scoreboard objectives add gis_player_status_int dummy "intelligence"
scoreboard objectives add gis_player_status_res dummy "resitance"

scoreboard objectives add gis_cooltime dummy "skill cooltime"
scoreboard objectives setdisplay sidebar gis_cooltime

#skill
scoreboard objectives add gis_skill_using dummy "skills being used or prepared"
scoreboard objectives add gis_skill_using_count dummy "time spent using and preparing skills"
scoreboard objectives add gis_skill_using_count_sub dummy "copy of gis_skill_using_count"
scoreboard objectives add gis_skill_action_count dummy "time spent doing skill action "
scoreboard objectives add gis_skill_ignore_cancel_count dummy "time for wait to cancel skill"

scoreboard objectives add gis_sneak_count dummy "how many times the player has sneaked recently"
scoreboard objectives add gis_sneak_interrupted_count dummy "how long the player has not been sneaking"


scoreboard objectives add gis_skill_main_1 dummy "skill slot main weapon 1"
scoreboard objectives add gis_skill_main_2 dummy "skill slot main weapon 2"
scoreboard objectives add gis_skill_sub_1 dummy "skill slot sub weapon 1"
scoreboard objectives add gis_skill_sub_2 dummy "skill slot sub weapon 2"

#job 0:unset 1:tank 2:attacker 3:hunter 4:magician 5:shaman
scoreboard objectives add gis_job dummy "job"

#item
scoreboard objectives add gis_throw_trident minecraft.used:minecraft.trident "throw trident"
scoreboard objectives add gis_trident_using_count dummy "time spent holding up a trident"
scoreboard objectives add gis_trident_using_count_sub dummy "copy of gis_trident_using_count"
scoreboard objectives add gis_shoot_arrow minecraft.used:minecraft.bow "shoot arrow"

#system_global
scoreboard objectives add gis_damage dummy
scoreboard objectives add gis_const dummy
scoreboard objectives add gis_player_leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add gis_player_deathcount deathCount "check if player death"


#system_temp
scoreboard objectives add gis_temp_1 dummy
scoreboard objectives add gis_temp_2 dummy
scoreboard objectives add gis_temp_3 dummy


##
scoreboard players set #0 gis_const 0
scoreboard players set #1 gis_const 1
scoreboard players set #2 gis_const 2
scoreboard players set #3 gis_const 3
scoreboard players set #4 gis_const 4
scoreboard players set #5 gis_const 5
scoreboard players set #6 gis_const 6
scoreboard players set #7 gis_const 7
scoreboard players set #8 gis_const 8
scoreboard players set #9 gis_const 9
scoreboard players set #10 gis_const 10
scoreboard players set #11 gis_const 11
scoreboard players set #12 gis_const 12
scoreboard players set #13 gis_const 13
scoreboard players set #14 gis_const 14
scoreboard players set #15 gis_const 15
scoreboard players set #16 gis_const 16
scoreboard players set #17 gis_const 17
scoreboard players set #18 gis_const 18
scoreboard players set #19 gis_const 19
scoreboard players set #20 gis_const 20
scoreboard players set #30 gis_const 30
scoreboard players set #40 gis_const 40
scoreboard players set #50 gis_const 50
scoreboard players set #60 gis_const 60
scoreboard players set #70 gis_const 70
scoreboard players set #80 gis_const 80
scoreboard players set #90 gis_const 90
scoreboard players set #100 gis_const 100
scoreboard players set #200 gis_const 200
scoreboard players set #300 gis_const 300
scoreboard players set #400 gis_const 400
scoreboard players set #500 gis_const 500
scoreboard players set #600 gis_const 600
scoreboard players set #700 gis_const 700
scoreboard players set #800 gis_const 800
scoreboard players set #900 gis_const 900
scoreboard players set #1000 gis_const 1000
scoreboard players set #1024 gis_const 1024
scoreboard players set #2000 gis_const 2000


##create team
team add gis_entity_hp_0
team add gis_entity_hp_1
team add gis_entity_hp_2
team add gis_entity_hp_3
team add gis_entity_hp_4
team add gis_entity_hp_5
team add gis_entity_hp_6
team add gis_entity_hp_7
team add gis_entity_hp_8
team add gis_entity_hp_9
team add gis_entity_hp_10
team add gis_entity_hp_11
team add gis_entity_hp_12
team add gis_entity_hp_13
team add gis_entity_hp_14
team add gis_entity_hp_15
team add gis_entity_hp_16
team add gis_entity_hp_17
team add gis_entity_hp_18
team add gis_entity_hp_19
team add gis_entity_hp_20

##set team
team modify gis_entity_hp_0 suffix [{"text":"[","color":"white"},{"text":"||||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_1 suffix [{"text":"[","color":"white"},{"text":"|","color":"red"},{"text":"|||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_2 suffix [{"text":"[","color":"white"},{"text":"||","color":"red"},{"text":"||||||||||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_3 suffix [{"text":"[","color":"white"},{"text":"|||","color":"red"},{"text":"|||||||||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_4 suffix [{"text":"[","color":"white"},{"text":"||||","color":"red"},{"text":"||||||||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_5 suffix [{"text":"[","color":"white"},{"text":"|||||","color":"yellow"},{"text":"|||||||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_6 suffix [{"text":"[","color":"white"},{"text":"||||||","color":"yellow"},{"text":"||||||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_7 suffix [{"text":"[","color":"white"},{"text":"|||||||","color":"yellow"},{"text":"|||||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_8 suffix [{"text":"[","color":"white"},{"text":"||||||||","color":"yellow"},{"text":"||||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_9 suffix [{"text":"[","color":"white"},{"text":"|||||||||","color":"yellow"},{"text":"|||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_10 suffix [{"text":"[","color":"white"},{"text":"||||||||||","color":"yellow"},{"text":"||||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_11 suffix [{"text":"[","color":"white"},{"text":"|||||||||||","color":"green"},{"text":"|||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_12 suffix [{"text":"[","color":"white"},{"text":"||||||||||||","color":"green"},{"text":"||||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_13 suffix [{"text":"[","color":"white"},{"text":"|||||||||||||","color":"green"},{"text":"|||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_14 suffix [{"text":"[","color":"white"},{"text":"||||||||||||||","color":"green"},{"text":"||||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_15 suffix [{"text":"[","color":"white"},{"text":"|||||||||||||||","color":"green"},{"text":"|||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_16 suffix [{"text":"[","color":"white"},{"text":"||||||||||||||||","color":"green"},{"text":"||||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_17 suffix [{"text":"[","color":"white"},{"text":"|||||||||||||||||","color":"green"},{"text":"|||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_18 suffix [{"text":"[","color":"white"},{"text":"||||||||||||||||||","color":"green"},{"text":"||","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_19 suffix [{"text":"[","color":"white"},{"text":"|||||||||||||||||||","color":"green"},{"text":"|","color":"dark_gray"},{"text":"]","color":"white"}]
team modify gis_entity_hp_20 suffix [{"text":"[","color":"white"},{"text":"||||||||||||||||||||","color":"green"},{"text":"]","color":"white"}]

