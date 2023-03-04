
# ヒット音
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.95 1

    #execute at @e[nbt={ActiveEffects:[{Id:24,Amplifier:5b}]}] run particle end_rod ~ ~2.5 ~ 0.1 0.1 0.1 0.02 22
    
# ダメージを設定
    data modify storage formchanger_score_damage: Damage set value 1.66
    execute if entity @s[nbt={ActiveEffects:[{Id:24,Amplifier:5b}]}] run data modify storage formchanger_score_damage: Damage set value 2.16
    execute at @s run function formchanger_score_damage:api/attack

# 効果上書き
    execute if entity @s[nbt={ActiveEffects:[{Id:24,Amplifier:5b}]}] run effect give @s glowing 3 5 true