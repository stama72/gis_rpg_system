
### 開発バージョン  
1.20.5

### スプレッドシート
https://docs.google.com/spreadsheets/d/1x2YA6I-pkyaqhWyQVidxWZLpzbHc8oWMAFllHdvJdAM/edit?usp=sharing


### ファイル名について

## スキル
1_bow_a なら、  
スキル番号1、アイテム種bow、トリガー種aという意味。  
トリガー種は、素(右クリックなど)がa、特殊(スニーク+右クリックなど)がb、その他(スニークのみなど)がc  


### 豆知識類

## tags
アンデッドかどうかの判定は＃minecraft:inverted_healing_and_harmを使えば良い


execute if score @s gis_job matches 3 if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{dagger:1b}}]
