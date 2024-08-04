#実行者(@s)：的、判定目標、攻撃対象

#引数
#attacker：攻撃者(スキルを使った側、攻撃範囲の原点)のUUID
#mode："0"：シフトもローテーションもなし、"1"：上shift、"2"：下shift
#shift：上か下にnブロックずらす(0≦nの小数)
#rotation：上にn度ずらす(-90≦n≦90の小数)

#attackerの座標より、下側に存在する
$execute if score #0 gis_const matches $(mode) at $(attacker) facing entity @s feet rotated 0 ~ positioned ^ ^ ^3.0 rotated as $(attacker) rotated 0 ~ positioned ^ ^4.0 ^ as $(attacker) as @s[distance=..5.0] run return 1

#上上/上下
$execute if score #1 gis_const matches $(mode) at $(attacker) rotated 0 ~ positioned ^ ^$(shift) ^ facing entity @s feet rotated 0 ~ positioned ^ ^ ^3.0 rotated as $(attacker) rotated 0 ~$(rotation) positioned ^ ^4.0 ^ positioned ^ ^-$(shift) ^ as $(attacker) if entity @s[distance=..5.0] run return 1

#下上/下下
$execute if score #2 gis_const matches $(mode) at $(attacker) rotated 0 ~ positioned ^ ^-$(shift) ^ facing entity @s feet rotated 0 ~ positioned ^ ^ ^3.0 rotated as $(attacker) rotated 0 ~$(rotation) positioned ^ ^4.0 ^ positioned ^ ^$(shift) ^ as $(attacker) if entity @s[distance=..5.0] run return 1

return 0