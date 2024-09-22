
#@sは敵mob
#複雑な当たり判定の後など、敵mobが実行者になっている場合はこっちを使うと楽

$tag $(player) add gis_player_attacker_check

$scoreboard players set @s gis_damage $(damage)
scoreboard players operation @s gis_damage *= #100 gis_const
execute at @s run function gis:system/damage/p_to_e_magic
damage @s 0 magic

$tag $(player) remove gis_player_attacker_check