
# ”下のブロックは　＜オノ＞　で壊すことができる”
    execute if score @s CH_cooldown matches 0 unless predicate formchanger:sneak run title @s actionbar {"text": "- Change=Shovel -","color": "#55fddd","italic": false}
    execute if score @s CH_cooldown matches 0 unless predicate formchanger:sneak at @s run playsound block.amethyst_block.place player @s ~ ~ ~ 0.2 1.2

    # スニーク中かつクールダウンを過ぎたときは進度を教えてくれるよ
        execute if score @s CH_cooldown matches 0 if predicate formchanger:sneak run function formchanger:use/advancegauge

# 一定時間後　ツールの交換をしよう！
    execute if entity @s[scores={Nia_Sneaktime=300..}] run function formchanger:use/change/nextshovel

# 変化のタイミングで効果がある系ならかけておく！
    # ドッペルブラスト
        execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={Nia_Sneaktime=300..}] run playsound entity.wither.shoot player @s ~ ~ ~ 0.25 1.2 
        execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={Nia_Sneaktime=300..}] run scoreboard players add @s D_Charge 1
        
# RESET
    execute if entity @s[scores={Nia_Sneaktime=300..}] run scoreboard players reset @s Nia_Sneaktime