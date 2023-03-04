
tag @s add D_NoHit
# 三方向からレーザー狙撃
# まずはクラウド君召喚
    execute at @s run summon area_effect_cloud ^ ^0.2 ^-0.2 {Tags:["D_Shoot","D_Shoot_1","D_S_Set"],Duration:3}
    execute at @s run summon area_effect_cloud ^-1.2 ^2.2 ^-0.2 {Tags:["D_Shoot","D_Shoot_2","D_S_Set"],Duration:3}
    execute at @s run summon area_effect_cloud ^1.2 ^2.2 ^-0.2 {Tags:["D_Shoot","D_Shoot_3","D_S_Set"],Duration:3}

# 視線の先１５ブロックに召喚
    execute at @s positioned ~ ~1.5 ~ run summon area_effect_cloud ^ ^ ^15 {Tags:["D_Shoot","D_Shoot_P","D_P_Set"],Duration:1}

# エンティティがその近くにいた場合、近くのエンティティ一体に向けて発射/いない場合はクラウド君自身に向けて発射する！
    execute at @e[tag=D_P_Set] run tp @e[tag=D_P_Set] @e[distance=..9,sort=nearest,limit=1,tag=!D_P_Set,type=!item] 
    execute at @e[tag=D_P_Set] if entity @e[distance=..0.05,tag=!D_P_Set] at @e[tag=D_P_Set] run tp @e[tag=D_P_Set] ~ ~1.5 ~

    execute at @e[tag=D_S_Set] run particle dust 0 0 0 5 ~ ~ ~ 0.1 0.1 0.1 0 30 normal @a
    execute at @e[tag=D_S_Set] run particle dust 0.459 0.459 0.459 2 ~ ~ ~ 0.1 0.1 0.1 0 30 normal @a
    execute at @e[tag=D_S_Set] run particle dust 0.125 0 0.239 3 ~ ~ ~ 0.1 0.1 0.1 0 30 normal @a

    execute as @e[tag=D_S_Set] at @s run tp @s ^ ^ ^ facing entity @e[tag=D_P_Set,limit=1]
    execute as @e[tag=D_S_Set] at @s run function formchanger:use/ex/doppel_brast/d_black_shoot_chain
    tag @e remove D_S_Set

# 発射初期パーティクル
    execute at @e[tag=D_Shoot] run particle dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 30 normal @a
    execute at @e[tag=D_Shoot] run particle dust 0.459 0.459 0.459 1 ~ ~ ~ 0.1 0.1 0.1 0 30 normal @a
    execute at @e[tag=D_Shoot] run particle dust 0.125 0 0.239 1 ~ ~ ~ 0.1 0.1 0.1 0 30 normal @a

    execute at @e[tag=D_Shoot_P] run particle dust 0.078 0.051 0.106 11.1 ~ ~ ~ 0.1 0.1 0.1 9 11 normal @a
    
# ターゲットに対してのダメージ
    execute at @e[tag=D_Shoot_P] run tag @e[distance=1.49..1.51,tag=!D_Shoot] add D_Hit
    execute as @e[tag=D_Hit] run function formchanger:use/ex/doppel_brast/damages/black_shoot_d

    tag @e remove D_Hit