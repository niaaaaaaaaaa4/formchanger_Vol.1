
# アップグレードキットをメインハンドに持ったままシフトすると、変化する
        execute if data entity @s[predicate=!formchanger:sneak] SelectedItem.tag.Status{Grade:0} as @s run title @s actionbar [{"text": "- GradeUp -","color": "#9ec2ff"},{"text": " - require 20Lv. -","color": "#31f700"}]
        execute if data entity @s[predicate=!formchanger:sneak] SelectedItem.tag.Status{Grade:1} as @s run title @s actionbar [{"text": "- GradeUp -","color": "#9ec2ff"},{"text": " - require 30Lv. -","color": "#31f700"}]
        execute if data entity @s[predicate=!formchanger:sneak] SelectedItem.tag.Status{Grade:2} as @s run title @s actionbar [{"text": "- GradeUp -","color": "#9ec2ff"},{"text": " - require 40Lv. -","color": "#31f700"}]
        execute if data entity @s[predicate=!formchanger:sneak] SelectedItem.tag.Status{Grade:3} as @s run title @s actionbar [{"text": "- GradeUp -","color": "#9ec2ff"},{"text": " - require 50Lv. -","color": "#31f700"}]
 
# 3-->4
    execute if data entity @s[scores={Nia_Sneaktime=299},level=50..] SelectedItem.tag.Status{Grade:3} run title @s actionbar [{"text": "- Charged!!! -","color": "blue"},{"text": " - Grade Up!!!!!! -","color": "gold"}]
    execute if data entity @s[scores={Nia_Sneaktime=299},level=50..] SelectedItem.tag.Status{Grade:3} run playsound entity.player.levelup player @s ~ ~ ~ 2.15 1.25 
    execute if data entity @s[scores={Nia_Sneaktime=299},level=50..] SelectedItem.tag.Status{Grade:3} run particle end_rod ~ ~ ~ 0.5 0.5 0.5 2.22 125 force


    execute if data entity @s[scores={Nia_Sneaktime=299},level=50..] SelectedItem.tag.Status{Grade:3} run loot replace entity @s weapon.mainhand loot formchanger:goods/upgrade_kit_g4

# 2-->3
    execute if data entity @s[scores={Nia_Sneaktime=299},level=40..] SelectedItem.tag.Status{Grade:2} run title @s actionbar [{"text": "- Charged!!! -","color": "blue"},{"text": " - Grade Up!!!!! -","color": "gold"}]
    execute if data entity @s[scores={Nia_Sneaktime=299},level=40..] SelectedItem.tag.Status{Grade:2} run playsound entity.player.levelup player @s ~ ~ ~ 1.95 1.25 
    execute if data entity @s[scores={Nia_Sneaktime=299},level=40..] SelectedItem.tag.Status{Grade:2} run particle end_rod ~ ~ ~ 0.5 0.5 0.5 2.22 125 force


    execute if data entity @s[scores={Nia_Sneaktime=299},level=40..] SelectedItem.tag.Status{Grade:2} run loot replace entity @s weapon.mainhand loot formchanger:goods/upgrade_kit_g3

# 1-->2
    execute if data entity @s[scores={Nia_Sneaktime=299},level=30..] SelectedItem.tag.Status{Grade:1} run title @s actionbar [{"text": "- Charged!!! -","color": "blue"},{"text": " - Grade Up!!!! -","color": "gold"}]
    execute if data entity @s[scores={Nia_Sneaktime=299},level=30..] SelectedItem.tag.Status{Grade:1} run playsound entity.player.levelup player @s ~ ~ ~ 1.75 1.25 
    execute if data entity @s[scores={Nia_Sneaktime=299},level=30..] SelectedItem.tag.Status{Grade:1} run particle end_rod ~ ~ ~ 0.5 0.5 0.5 2.22 125 force


    execute if data entity @s[scores={Nia_Sneaktime=299},level=30..] SelectedItem.tag.Status{Grade:1} run loot replace entity @s weapon.mainhand loot formchanger:goods/upgrade_kit_g2
 
# 0-->1
    execute if data entity @s[scores={Nia_Sneaktime=299},level=20..] SelectedItem.tag.Status{Grade:0} run title @s actionbar [{"text": "- Charged!!! -","color": "blue"},{"text": " - Grade Up!!! -","color": "gold"}]
    execute if data entity @s[scores={Nia_Sneaktime=299},level=20..] SelectedItem.tag.Status{Grade:0} run playsound entity.player.levelup player @s ~ ~ ~ 1.55 1.25 
    execute if data entity @s[scores={Nia_Sneaktime=299},level=20..] SelectedItem.tag.Status{Grade:0} run particle end_rod ~ ~ ~ 0.5 0.5 0.5 2.22 125 force


    execute if data entity @s[scores={Nia_Sneaktime=299},level=20..] SelectedItem.tag.Status{Grade:0} run loot replace entity @s weapon.mainhand loot formchanger:goods/upgrade_kit_g1
# 共通
    execute if data entity @s[scores={Nia_Sneaktime=299}] SelectedItem.tag.Status{ItemID:Upgrade_Kit} run scoreboard players set @s CH_cooldown 60
    execute if data entity @s[scores={Nia_Sneaktime=299}] SelectedItem.tag.Status{ItemID:Upgrade_Kit} run scoreboard players set @s Nia_Sneaktime 0
    
        execute if data entity @s[scores={Nia_Sneaktime=1..},level=20..] SelectedItem.tag.Status{Grade:0} as @s[scores={CH_cooldown=0}] run function formchanger:use/advancegauge
        execute if data entity @s[scores={Nia_Sneaktime=1..},level=30..] SelectedItem.tag.Status{Grade:1} as @s[scores={CH_cooldown=0}] run function formchanger:use/advancegauge
        execute if data entity @s[scores={Nia_Sneaktime=1..},level=40..] SelectedItem.tag.Status{Grade:2} as @s[scores={CH_cooldown=0}] run function formchanger:use/advancegauge
        execute if data entity @s[scores={Nia_Sneaktime=1..},level=50..] SelectedItem.tag.Status{Grade:3} as @s[scores={CH_cooldown=0}] run function formchanger:use/advancegauge

