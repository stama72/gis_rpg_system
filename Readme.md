
## 開発バージョン  
1.21

## スプレッドシート
https://docs.google.com/spreadsheets/d/1x2YA6I-pkyaqhWyQVidxWZLpzbHc8oWMAFllHdvJdAM/edit?usp=sharing

## スキル

### ファイル名について
1_bow_a なら、  
スキル番号1、アイテム種bow、トリガー種aという意味。  
トリガー種は、素(右クリックなど)がa、特殊(スニーク+右クリックなど)がb

### プレイヤーから敵へのダメージの与え方
プレイヤーを実行者にして、
計算にintとresを使う魔法ダメージなら、function gis:system/player/skill/damage_with_magic {enemy:"@n[type=!player]",damage:"50"}
計算にatkとdefを使う物理ダメージなら、function gis:system/player/skill/damage_with_physical {enemy:"@n[type=!player]",damage:"50"}
enemyはセレクター、damageはint型整数です。

あるいは、敵を実行者にして、
function gis:system/player/skill/damage_with_magic_e {player:"@p[tag=wand_skill_1_player]",damage:"30"}
function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=sword_skill_1_player]",damage:"30"}
のようにもできます。

###敵からプレイヤーへのダメージ
敵を実行者にして、
function gis:system/player/skill/damage_with_magic {player:"@p[tag=wand_skill_1_player]",damage:"30"}
function gis:system/player/skill/damage_with_physical {player:"@p[tag=sword_skill_1_player]",damage:"30"}

プレイヤーを実行者にして
計算にresを使う魔法ダメージなら、function gis:system/entity/skill/damage_with_magic_p {enemy:"@n[type=!player]",damage:"50"}
計算にdefを使う物理ダメージなら、function gis:system/entity/skill/damage_with_physical_p {enemy:"@n[type=!player]",damage:"50"}


### 殴り系スキル発動時で通常攻撃を取りやめたい時に敵mobに付けるタグ
tag @s add gis_skill_attacked


## 技術メモ

### カスタムエンチャントのレベル値に任意の数値を代入
execute store result entity @s ArmorItems[3].components."minecraft:enchantments".levels."gis:rpg_book" int 1 run ～

### tags
アンデッドかどうかの判定は＃minecraft:inverted_healing_and_harmを使えば良い


## サンプルアイテム
サンプルアイテムを作りたい時は、対応したアイテム(トライデント、盾、鉄剣、鉄塊、弓、鉄斧、棒、本など)を手に持って、/enchant @s gis:bowなどとすれば、武器種が設定できる。
食べ物属性を付けて、右クリックでスキルを使用できるようにしたい場合は、アイテムを手に持って、/item modify @s mainhand gis:convert_to_food_100sとすれば良い。
gis:convert_to_food_100sでは食べるのにかかる時間が100秒に設定されるが、gis:convert_to_food_10000sの方を使えば、10000秒かかるように設定して、食べているのかほぼ分からないくらいまで食べ動作を遅くすることもできる。

