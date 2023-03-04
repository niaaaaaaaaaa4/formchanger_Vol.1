
# ヒット音
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.25 3

# ダメージを設定
    data modify storage formchanger_score_damage: Damage set value 2.00
    execute at @s run function formchanger_score_damage:api/attack