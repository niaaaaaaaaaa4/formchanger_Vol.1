
# ヒット音
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.5 00.9

    #execute at @e[nbt={ActiveEffects:[{Id:24,Amplifier:5b}]}] run particle end_rod ~ ~2.5 ~ 0.1 0.1 0.1 0.02 22
    
# ダメージを設定
    data modify storage formchanger_score_damage: Damage set value 20.50
    execute as @s run function formchanger_score_damage:api/attack
    tag @s remove DHLL_Hit
    
# remove
    tag @s remove DH_Absolve