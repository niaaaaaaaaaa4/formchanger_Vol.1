
# 前方に黒色レーザーを発射、チャージで威力、範囲が変わる
tag @s add D_NoHit
# 三方向からレーザー狙撃
# まずはクラウド君召喚
    execute at @s positioned ~ ~1.5 ~ run summon area_effect_cloud ^ ^ ^0.8 {Tags:["DL_Shoot","DL_Shoot","DL_S_Set"],Duration:1}

# 視線の先３０ブロックに召喚
    execute if entity @s[scores={D_Charge=5}] at @s positioned ~ ~1.5 ~ run summon area_effect_cloud ^ ^ ^30 {Tags:["DL_Shoot","DL_Shoot_P","DL_P_Set"],Duration:1}

# 二段階目なら５０ブロック
    execute if entity @s[scores={D_Charge=6}] at @s positioned ~ ~1.5 ~ run summon area_effect_cloud ^ ^ ^50 {Tags:["DL_Shoot","DL_Shoot_P","DL_P_Set"],Duration:1}

# クラウド君自身に向けて発射する！
    execute as @e[tag=DL_S_Set] at @s run tp @s ^ ^ ^ facing entity @e[tag=DL_P_Set,limit=1]
    execute if entity @s[scores={D_Charge=6}] as @e[tag=DL_Shoot] run tag @s add DL_6

    execute as @e[tag=DL_S_Set] at @s run function formchanger:use/ex/doppel_brast/d_black_shoot_laser_chain
    tag @e remove DL_S_Set

# 発射初期パーティクル
    execute if entity @s[scores={D_Charge=5}] at @e[tag=DL_Shoot] run particle dust 0 0 0 5 ~ ~ ~ 0.1 0.1 0.1 0 10 normal @a
    execute if entity @s[scores={D_Charge=5}] at @e[tag=DL_Shoot] run particle dust 0.125 0 0.239 3 ~ ~ ~ 0.1 0.1 0.1 0 10 normal @a

    execute if entity @s[scores={D_Charge=6}] at @e[tag=DL_Shoot] run particle dust 0 0 0 7.5 ~ ~ ~ 0.1 0.1 0.1 0 20 normal @a
    execute if entity @s[scores={D_Charge=6}] at @e[tag=DL_Shoot] run particle dust 0.278 0 0.541 5 ~ ~ ~ 0.1 0.1 0.1 0 20 normal @a

    execute at @e[tag=DL_Shoot_P] run particle dust 0.078 0.051 0.106 11.1 ~ ~ ~ 0.1 0.1 0.1 9 11 normal @a
    
# ターゲットに対してのダメージ
    execute if entity @s[scores={D_Charge=5}] at @e[tag=DL_Shoot_P] run tag @e[distance=1.49..2.1,tag=!DL_Shoot] add DL_Hit
    execute as @e[tag=DL_Hit] run function formchanger:use/ex/doppel_brast/damages/black_laser_d
    execute as @e[tag=DLL_Hit] run function formchanger:use/ex/doppel_brast/damages/black_laser_d

# 反動ノックバック
    