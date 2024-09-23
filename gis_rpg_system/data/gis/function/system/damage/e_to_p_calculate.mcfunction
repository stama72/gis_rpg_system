##input damage
scoreboard players operation #damage gis_temp_1 = @s gis_damage
scoreboard players operation #attack gis_temp_1 = @s gis_damage


##damage_calculate
#get random
execute store result score #random gis_temp_2 run random value 35..65
execute store result score #random gis_temp_3 run random value 35..65
scoreboard players operation #random gis_temp_2 += #random gis_temp_3
scoreboard players operation #damage gis_temp_1 *= #random gis_temp_2



#calculate  damage
#max(((1.5skill_power+100)*skill power-20defence),100skill power)/(2defence+100)=damage
#(1.5skill_power+100)*skill power = (3attack+200)*skill power/2

#attack：#attack gis_temp_1
#defence：#defence gis_temp_1
#skill power：@s gis_damage

#分子側
scoreboard players operation #attack gis_temp_1 *= #3 gis_const
scoreboard players operation #attack gis_temp_1 += #200 gis_const
scoreboard players operation #attack gis_temp_1 *= #damage gis_temp_1
scoreboard players operation #attack gis_temp_1 /= #2 gis_const

scoreboard players operation #defence gis_temp_2 = #defence gis_temp_1
scoreboard players operation #defence gis_temp_2 *= #20 gis_const
scoreboard players operation #attack gis_temp_1 -= #defence gis_temp_2

scoreboard players operation #attack gis_temp_2 = #damage gis_temp_1
scoreboard players operation #attack gis_temp_2 *= #100 gis_const

scoreboard players operation #attack gis_temp_1 > #attack gis_temp_2

#分母側
scoreboard players operation #defence gis_temp_1 *= #2 gis_const
scoreboard players operation #defence gis_temp_1 += #100 gis_const


scoreboard players operation #attack gis_temp_1 /= #defence gis_temp_1

#scoreboard players operation #attack gis_temp_1 /= #1000 gis_const

scoreboard players operation #attack gis_temp_1 > #1 gis_const



##output damage
scoreboard players operation @s gis_damage = #attack gis_temp_1