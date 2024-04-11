#マーカーエンティティと二分探索を使って、@s[distance=..n]の繰り返しで求める。

#実行者は始点
#事前に、終点で以下を実行してマーカーを出しておく必要がある。
#execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,1,2]}
#なお、始点と終点は逆でも同じ結果になるので、どちらがどちらであるかはあまり気にしなくて良い。

#計測できるのは256ブロックまで。誤差は0.015ブロックまで抑えてある。

#両地点の距離(1000倍)
scoreboard players set #get_distance gis_temp_1 0

#始点のマーカー
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,1,1]}

execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=128..] run scoreboard players add #get_distance gis_temp_1 128000
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=128..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^128 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=64..] run scoreboard players add #get_distance gis_temp_1 64000
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=64..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^64 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=32..] run scoreboard players add #get_distance gis_temp_1 32000
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=32..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^32 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=16..] run scoreboard players add #get_distance gis_temp_1 16000
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=16..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^16 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=8..] run scoreboard players add #get_distance gis_temp_1 8000
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=8..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^8 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=4..] run scoreboard players add #get_distance gis_temp_1 4000
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=4..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^4 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=2..] run scoreboard players add #get_distance gis_temp_1 2000
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=2..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^2 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=1..] run scoreboard players add #get_distance gis_temp_1 1000
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=1..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^1 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~

execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.5..] run scoreboard players add #get_distance gis_temp_1 500
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.5..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^0.5 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.25..] run scoreboard players add #get_distance gis_temp_1 250
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.25..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^0.25 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.125..] run scoreboard players add #get_distance gis_temp_1 125
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.125..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^0.125 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.0625..] run scoreboard players add #get_distance gis_temp_1 62
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.0625..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^0.0625 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.03125..] run scoreboard players add #get_distance gis_temp_1 31
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.03125..] facing entity 0000005a-0000-0000-0000-000100000002 feet positioned ^ ^ ^0.03125 run teleport 0000005a-0000-0000-0000-000100000001 ~ ~ ~
execute at 0000005a-0000-0000-0000-000100000001 as 0000005a-0000-0000-0000-000100000002 as @s[distance=0.015625..] run scoreboard players add #get_distance gis_temp_1 15

kill 0000005a-0000-0000-0000-000100000001

#tellraw @a [{"text":"distance："},{"score":{"name":"#get_distance","objective":"gis_temp_1"}}]
#get_distance gis_temp_1
return run scoreboard players get #get_distance gis_temp_1
