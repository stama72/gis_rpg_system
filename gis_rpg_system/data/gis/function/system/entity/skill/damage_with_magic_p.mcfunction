
#@sはプレイヤー
#複雑な当たり判定の後など、プレイヤーが実行者になっている場合はこっちを使うと楽

$tag $(enemy) add gis_player_attacker_check

$scoreboard players set @s gis_damage $(damage)
scoreboard players operation @s gis_damage *= #10 gis_const
execute at @s run function gis:system/damage/e_to_p_magic
damage @s 0 magic

$tag $(enemy) remove gis_player_attacker_check