

# 実行場所の呼び出し
    summon armor_stand ~ ~ ~ {NoGravity:true,Small:true,CustomNameVisible:true,CustomName:'{"text": "tester"}',Tags:[Thunder_Bolt]}
    particle electric_spark ~ ~1 ~ 0.1 10 0.1 0.22 200 normal @s
    playsound entity.generic.explode player @s ~ ~1 ~ 0.2 1.55

# ダメージ判定（もらいもの）
    execute at @e[tag=Thunder_Bolt] as @e[limit=1,sort=nearest,tag=!Thunder_Bolt,tag=!item,type=!player] run function formchanger:use/ex/thunderbolt_damage
    #execute as @e[tag=Thunder_Bolt] at @s run effect clear @e[limit=1,sort=nearest,tag=!item]

# エフェクト発生
    particle large_smoke ~ ~ ~ 0.2 0.1 0.2 0.05 166 normal @s
    particle large_smoke ~ ~ ~ 0.05 0 0.05 0.001 56 normal @s
    kill @e[tag=Thunder_Bolt]