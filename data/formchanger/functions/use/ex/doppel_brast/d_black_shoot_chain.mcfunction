
# 前進
    tp ^ ^ ^0.25 

# パーティクル＆サウンド
    playsound block.snow.break player @a ~ ~ ~ 0.3 0.55

    particle dust 0 0 0 0.75 ~ ~ ~ 0 0 0 0 1 normal @a
    execute if entity @s[tag=D_Shoot_1] run particle dust 0.792 0.792 0.792 1.5 ~ ~ ~ 0 0 0 0 1 normal @a
    execute if entity @s[tag=D_Shoot_2] run particle dust 0.098 0 0.153 1.5 ~ ~ ~ 0 0 0 0 1 normal @a
    execute if entity @s[tag=D_Shoot_3] run particle dust 0.275 0.271 0.271 1.5 ~ ~ ~ 0 0 0 0 1 normal @a
    execute if entity @s[tag=DEX] run particle dragon_breath ~ ~ ~ 0 0 0 0 1 normal @a
 
# 再帰！
    execute positioned ^ ^ ^0.1 unless entity @e[distance=..2,tag=D_Shoot_P] run function formchanger:use/ex/doppel_brast/d_black_shoot_chain

# 当たったら処理
    execute as @e[dx=0,tag=!D_NoHit,type=!item,tag=!D_Shoot] positioned ^-0.5 ^-0.5 ^-0.5 if entity @s[dx=0] run tag @s add D_Hit
    
    execute as @e[tag=D_Hit] run function formchanger:use/ex/doppel_brast/damages/black_shoot_d
    
    schedule function formchanger:use/effect/resettag 3t replace
    tag @e remove D_Hit