#set storage


##create score

#player input

#player_status
scoreboard objectives add gis_player_status_atk dummy "atk"
scoreboard objectives add gis_player_status_def dummy "def"
scoreboard objectives add gis_player_status_matk dummy "matk"
scoreboard objectives add gis_player_status_mdef dummy "mdef"

scoreboard objectives add gis_cooltime dummy "ct"
scoreboard objectives setdisplay sidebar gis_cooltime

scoreboard objectives add gis_skill_using dummy "skills being used or prepared"
scoreboard objectives add gis_skill_using_count dummy "time spent using or preparing skills"

scoreboard objectives add gis_skill_main_1 dummy "skill slot main weapon 1"
scoreboard objectives add gis_skill_main_2 dummy "skill slot main weapon 2"
scoreboard objectives add gis_skill_sub_1 dummy "skill slot sub weapon 1"
scoreboard objectives add gis_skill_sub_2 dummy "skill slot sub weapon 2"
scoreboard objectives add gis_skill_other dummy "skill slot other"

#job 0:unset 1:tank 2:attacker 3:hunter 4:magician 5:shaman
scoreboard objectives add gis_job dummy "job"


#system_global
scoreboard objectives add gis_damage dummy
scoreboard objectives add gis_health dummy
scoreboard objectives add gis_const dummy

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
scoreboard players set #10 gis_const 10
scoreboard players set #20 gis_const 20
scoreboard players set #100 gis_const 100

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

