#実行者(@s)：的、判定目標、攻撃対象

#引数
#rotation：右にn度ずらす(0≦n≦180の小数)
#attacker：攻撃者(スキルを使った側、攻撃範囲の原点)のUUID

#attackerの座標からrotation度右にずらした方向より、左側に存在する
$execute at $(attacker) facing entity @s feet rotated ~ 0 positioned ^ ^ ^3.0 rotated as $(attacker) rotated ~$(rotation) 0 positioned ^-4.0 ^ ^ as $(attacker) if entity @s[distance=..5.0] run return 1
return 0

