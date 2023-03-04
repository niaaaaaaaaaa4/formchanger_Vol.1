
# 前進
    tp ^ ^ ^0.2

# パーティクル＆サウンド
    playsound block.snow.break player @a ~ ~ ~ 0.3 0.55
    playsound entity.warden.attack_impact player @a ~ ~ ~ 0.3 0.55
    execute if entity @s[tag=DL_6] run playsound entity.warden.attack_impact player @a ~ ~ ~ 0.3 1.55

    execute if entity @s run particle dust 0 0 0 3.75 ~ ~ ~ 0 0 0 0 1 normal @a
    execute if entity @s[tag=DL_6] run particle dust 0 0 0 6.75 ~ ~ ~ 0 0 0 0 1 normal @a
    execute if entity @s[tag=DL_6] run particle dust 0.557 0 0.608 2.75 ~ ~ ~ 0 0 0 0 1 normal @a

    execute if predicate formchanger:random/10p run tag @s add Large

    execute if entity @s[tag=Large] run particle dust 0.18 0.18 0.18 3 ^ ^1.5 ^ 0 0 0 0.01 3
    execute if entity @s[tag=Large] run particle dust 0.18 0.18 0.18 3 ^ ^-1.5 ^ 0 0 0 0.01 3
    execute if entity @s[tag=Large] run particle dust 0.18 0.18 0.18 3 ^1.5 ^ ^ 0 0 0 0.01 3
    execute if entity @s[tag=Large] run particle dust 0.18 0.18 0.18 3 ^-1.5 ^ ^ 0 0 0 0.01 3
    execute if entity @s[tag=Large,tag=DL_6] run particle dust 0.459 0.165 0.502 3 ^-2.65 ^-2.65 ^ 0 0 0 0.01 3
    execute if entity @s[tag=Large,tag=DL_6] run particle dust 0.459 0.165 0.502 3 ^2.65 ^-2.65 ^ 0 0 0 0.01 3
    execute if entity @s[tag=Large,tag=DL_6] run particle dust 0.459 0.165 0.502 3 ^2.65 ^2.65 ^ 0 0 0 0.01 3
    execute if entity @s[tag=Large,tag=DL_6] run particle dust 0.459 0.165 0.502 3 ^-2.65 ^2.65 ^ 0 0 0 0.01 3
    
    tag @s remove Large

# 再帰！
    execute positioned ^ ^ ^0.2 unless entity @e[distance=..2,tag=DL_Shoot_P] run function formchanger:use/ex/doppel_brast/d_black_shoot_laser_chain

# 当たったら処理
    execute if entity @s[tag=!DL_6] positioned ^ ^-0.5 ^ as @e[distance=..2.05,tag=!D_NoHit,type=!item,tag=!DL_Shoot] run tag @s add DL_Hit
    execute if entity @s[tag=DL_6] positioned ^ ^-0.5 ^ as @e[distance=..3.25,tag=!D_NoHit,type=!item,tag=!DL_Shoot] run tag @s add DLL_Hit
    
    schedule function formchanger:use/effect/resettag 3t replace