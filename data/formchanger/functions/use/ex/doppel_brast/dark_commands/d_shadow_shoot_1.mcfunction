
execute if score @p Play_ID = @s Tile_ID run tag @s add D_NoHit
scoreboard players set @s Left_Shoot 0
# レーザー狙撃
    summon area_effect_cloud ^ ^ ^0.8 {Tags:["D_Shoot","D_Shoot_11","D_S_Set","DEX","Canthit"],Duration:1}
   
# 召喚
    summon area_effect_cloud ^ ^ ^ {Tags:["D_Shoot","D_Shoot_P","D_P_Set","Canthit"],Duration:1}

# エンティティがその近くにいた場合、近くのエンティティ一体に向けて発射/いない場合はクラウド君自身に向けて発射する！
    execute at @e[tag=D_P_Set] run tp @e[tag=D_P_Set] @e[distance=..20,sort=random,limit=1,tag=!Canthit,tag=!D_NoHit,type=#formchanger:enemy] 
    execute at @e[tag=D_P_Set] if entity @e[distance=..0.05,tag=!D_P_Set] at @e[tag=D_P_Set] run tp @e[tag=D_P_Set] ~ ~1.5 ~

    execute at @e[tag=D_S_Set] run particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
    execute at @e[tag=D_S_Set] run particle dust 0.188 0.094 0.173 0 ~ ~ ~ 0.1 0.1 0.1 0 10 normal @a
    execute at @e[tag=D_S_Set] run particle dust 0.506 0 0.706 3.55 ~ ~ ~ 0 0 0 0.01 10 normal @a

    execute as @e[tag=D_S_Set] at @s run tp @s ^ ^ ^ facing entity @e[tag=D_P_Set,limit=1]
    execute as @e[tag=D_S_Set] at @s run function formchanger:use/ex/doppel_brast/d_black_shoot_chain
    tag @e remove D_S_Set

# 発射初期パーティクル
    execute at @e[tag=D_Shoot] run particle dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 10 normal @a
    execute at @e[tag=D_Shoot] run particle dust 0.459 0.459 0.459 1 ~ ~ ~ 0.1 0.1 0.1 0 10 normal @a
    execute at @e[tag=D_Shoot] run particle dust 0.506 0 0.706 0.55 ~ ~ ~ 0 0 0 0.01 10 normal @a

    execute at @e[tag=D_Shoot_P] run particle dust 0.078 0.051 0.106 1.1 ~ ~ ~ 0.1 0.1 0.1 9 3 normal @a
    execute at @e[tag=D_Shoot_P] run particle dust 0.506 0 0.706 3.55 ~ ~ ~ 0 0 0 0.01 10 normal @a
    
# ターゲットに対してのダメージ
    execute at @e[tag=D_Shoot_P] run tag @e[distance=1.49..1.61,tag=!D_Shoot,type=#formchanger:enemy] add D_Hit
    execute as @e[tag=D_Hit] run function formchanger:use/ex/doppel_brast/damages/shadow_pillar_d

    tag @e remove D_Hit