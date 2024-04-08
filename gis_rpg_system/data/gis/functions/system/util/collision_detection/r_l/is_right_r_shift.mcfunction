#実行者(@s)：的、判定目標、攻撃対象

#引数
#shift：右にnブロックずらす(0≦nの小数)
#attacker：攻撃者(スキルを使った側、攻撃範囲の原点)のUUID

#attackerの座標からshiftブロック右にずらした位置より、右側に存在する
$execute at $(attacker) rotated ~ 0 positioned ^-$(shift) ^ ^  facing entity @s feet rotated ~ 0 positioned ^ ^ ^3.0 rotated as $(attacker) rotated ~ 0 positioned ^4.0 ^ ^ positioned ^$(shift) ^ ^ as $(attacker) if entity @s[distance=..5.0] run return 1
return 0

