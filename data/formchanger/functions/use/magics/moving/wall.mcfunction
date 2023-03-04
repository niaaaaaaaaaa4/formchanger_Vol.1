
# パーティクル＆サウンド
    execute if entity @s[tag=M_ammo] run playsound block.amethyst_cluster.break player @a ~ ~ ~ 1.33 1.5
    execute if entity @s[tag=M_ammo] run particle end_rod ~ ~ ~ 0.4 0.4 0.4 0 25 force

# 消滅
    tag @s add Kill