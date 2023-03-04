
# ヒット音
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.5 00.9

    #execute at @e[nbt={ActiveEffects:[{Id:24,Amplifier:5b}]}] run particle end_rod ~ ~2.5 ~ 0.1 0.1 0.1 0.02 22
    
# ダメージを設定
    data modify storage formchanger_score_damage: Damage set value 24.50
    execute at @s run function formchanger_score_damage:api/attack

# 上空にノックバック
    #data merge entity @s {Motion:[0.0,1.25,0.0]}
    execute if entity @s[tag=!DEX_Hit] run data modify entity @s Motion[1] set value 1.65
 
    tag @s remove DP_Hit
    tag @s remove DEX_Hit
