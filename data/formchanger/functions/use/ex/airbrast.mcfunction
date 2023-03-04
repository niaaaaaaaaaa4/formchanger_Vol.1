

# ダメージ判定（もらいもの）
    execute at @e[tag=Length] as @e[distance=..3.25,type=!player] run function formchanger:use/ex/airbrast_damage
    #execute as @e[tag=Thunder_Bolt] at @s run effect clear @e[limit=1,sort=nearest,tag=!item]

# エフェクト発生
    execute at @e[tag=Target] run playsound entity.firework_rocket.blast player @s ~ ~1 ~ 0.5 1.55
    execute at @e[tag=Target] run particle firework ~ ~1 ~ 0 0 0 0.19 20 normal @s
    execute at @e[tag=Target] run particle explosion ~ ~1 ~ 0 0 0 0.99 1 normal @s
    execute at @e[tag=Target] run effect give @e[distance=..3.25,type=!player] levitation 1 6
    execute at @e[tag=Target] as @e[distance=..3.25,type=!player] run function formchanger:use/ex/flowbrast

