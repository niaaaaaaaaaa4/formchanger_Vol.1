
# ヒット音
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1.5 1
    playsound item.shield.break player @a ~ ~ ~ 1.95 1

    #execute at @s[nbt={ActiveEffects:[{Id:24,Amplifier:5b}]}] run particle end_rod ~ ~1.25 ~ 1 1 1 0.2 22 normal @a

# ダメージを設定
    data modify storage formchanger_score_damage: Damage set value 8.50

    execute at @s run function formchanger_score_damage:api/attack