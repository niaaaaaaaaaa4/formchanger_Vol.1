
# 射程範囲外に出たとき
    # パーティクル＆効果音
        execute if entity @e[tag=M_ammo] run playsound block.amethyst_block.chime player @a ~ ~ ~ 1.2 1.55 

        execute if entity @e[tag=M_ammo] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0 15 normal

    # 消滅
        tag @e[scores={Range=0}] add Kill