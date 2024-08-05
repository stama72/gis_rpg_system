#実行者(@s)：的、判定目標、攻撃対象

#引数
#attacker：攻撃者(スキルを使った側、攻撃範囲の原点)のUUID
#mode："0"：シフトもローテーションもなし、"1"：上shift、"2"：下shift
#shift：上か下にnブロックずらす(0≦nの小数)
#rotation：上にn度ずらす(-90≦n≦90の小数)

#attackerの座標より、下側に存在する
#$execute if score #0 gis_const matches $(mode) at $(attacker) facing entity @s feet positioned ^ ^ ^3.0 rotated as $(attacker) positioned ^ ^4.0 ^ as $(attacker) as @s[distance=..5.0] run return 1

#上上/上下

$execute at $(attacker) positioned ^ ^$(shift) ^ run summon item_display ~ ~ ~ {item:{id:"minecraft:white_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":3011}}}


$execute at $(attacker) positioned ^ ^$(shift) ^ facing entity @s feet positioned ^ ^ ^3.0 run summon item_display ~ ~ ~ {item:{id:"minecraft:white_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":3012}}}


$execute at $(attacker) positioned ^ ^$(shift) ^ facing entity @s feet positioned ^ ^ ^3.0 rotated as $(attacker) rotated ~ ~$(rotation) positioned ^ ^4.0 ^ run summon item_display ~ ~ ~ {item:{id:"minecraft:white_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":3013}}}


$execute at $(attacker) positioned ^ ^$(shift) ^ facing entity @s feet positioned ^ ^ ^3.0 rotated as $(attacker) rotated ~ ~$(rotation) positioned ^ ^4.0 ^ positioned ^ ^-$(shift) ^ run summon item_display ~ ~ ~ {item:{id:"minecraft:white_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":3014}}}


$execute at $(attacker) positioned ^ ^$(shift) ^ facing entity @s feet positioned ^ ^ ^3.0 rotated as $(attacker) rotated ~ ~$(rotation) positioned ^ ^4.0 ^ positioned ^ ^-$(shift) ^ as $(attacker) if entity @s[distance=..5.0] run say lower!

return 1