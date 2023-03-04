
# ”次の交換先は　＜剣＞　だっ！　”
    execute if score @s CH_cooldown matches 0 unless predicate formchanger:sneak run title @s actionbar {"text": "- Change=Sword -","color": "#dddf55","italic": false}
    execute if score @s CH_cooldown matches 0 unless predicate formchanger:sneak at @s run playsound item.crossbow.quick_charge_1 player @s ~ ~ ~ 0.2 1.2

    # スニーク中かつクールダウンを過ぎたときは進度を教えてくれるよ
        execute if score @s CH_cooldown matches 0 if predicate formchanger:sneak run function formchanger:use/advancegauge

# 一定時間後　ツールの交換をしよう！
    execute if entity @s[scores={Nia_Sneaktime=100}] run function formchanger:use/change/electsword/nextsword