#実行者(@s)：的、判定目標、攻撃対象

#引数
#attacker：攻撃者(スキルを使った側、攻撃範囲の原点)の位置のマーカーのUUID
#mode："0"：シフトもローテーションもなし、"1"：右shift、"2"：左shift
#shift：右か左にnブロックずらす(0≦nの小数)
#rotation：右にn度ずらす(-180≦n≦180の小数)


#右右/#右左


$execute at $(attacker) positioned ^-$(shift) ^ ^ run summon item_display ~ ~ ~ {item:{id:"minecraft:white_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":3011}}}

$execute at $(attacker) positioned ^-$(shift) ^ ^ facing entity @s feet rotated ~ 0 positioned ^ ^ ^3.0 run summon item_display ~ ~ ~ {item:{id:"minecraft:white_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":3012}}}

$execute at $(attacker) positioned ^-$(shift) ^ ^ facing entity @s feet rotated ~ 0 positioned ^ ^ ^3.0 rotated as $(attacker) rotated ~$(rotation) 0 positioned ^4.0 ^ ^ run summon item_display ~ ~ ~ {item:{id:"minecraft:white_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":3013}}}

$execute at $(attacker) positioned ^-$(shift) ^ ^ facing entity @s feet rotated ~ 0 positioned ^ ^ ^3.0 rotated as $(attacker) rotated ~$(rotation) 0 positioned ^4.0 ^ ^ positioned ^$(shift) ^ ^ run summon item_display ~ ~ ~ {item:{id:"minecraft:white_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":3014}}}

$execute at $(attacker) positioned ^-$(shift) ^ ^ facing entity @s feet rotated ~ 0 positioned ^ ^ ^3.0 rotated as $(attacker) rotated ~$(rotation) 0 positioned ^4.0 ^ ^ positioned ^$(shift) ^ ^ as $(attacker) if entity @s[distance=..5.0] run say right

return 1