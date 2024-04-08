#実行者(@s)：的、判定目標、攻撃対象

#引数
#attacker：攻撃者(スキルを使った側、攻撃範囲の原点)のUUID

#attackerの座標より、右側に存在する
$execute at $(attacker) facing entity @s feet rotated ~ 0 positioned ^ ^ ^3.0 rotated as $(attacker) rotated ~ 0 positioned ^4.0 ^ ^ as $(attacker) if entity @s[distance=..5.0] run return 1