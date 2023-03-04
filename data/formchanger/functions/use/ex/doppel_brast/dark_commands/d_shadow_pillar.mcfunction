
tag @s add DP_NoHit
# 前方に黒い柱を召喚、敵を貫く
    execute if entity @s[scores={D_Charge=3..5}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^1.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=4..5}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^5.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=4..5}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^9.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=5}] at @s rotated ~ 0 run summon area_effect_cloud ^5.5 ^ ^5.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=5}] at @s rotated ~ 0 run summon area_effect_cloud ^-5.5 ^ ^5.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^3.2 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^-2.2 ^ ^1.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^2.2 ^ ^1.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^6.2 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^-3.2 ^ ^4.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^3.2 ^ ^4.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^9.2 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^-4.2 ^ ^7.8 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^4.2 ^ ^7.8 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^13.2 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^-5.2 ^ ^11.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=6}] at @s rotated ~ 0 run summon area_effect_cloud ^5.2 ^ ^11.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}

    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^-5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^5 ^ ^ {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^-5 ^ ^ {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^10 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^ ^-10 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^10 ^ ^ {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^-10 ^ ^ {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^7.5 ^ ^7.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^7.5 ^ ^-7.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^-7.5 ^ ^7.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}
    execute if entity @s[scores={D_Charge=9}] at @s rotated ~ 0 run summon area_effect_cloud ^-7.5 ^ ^-7.5 {Duration:1,Tags:["D_Pillar","DP_NoHit"]}

# クラウド君に対してパーティクルなど効果
    #execute as @e[tag=D_Pillar] run data merge entity @s {OnGround:true,NoGravity:false} 

    execute at @e[tag=D_Pillar] run particle dragon_breath ~ ~ ~ 0.4 0.02 0.4 0.01 150 normal @a

    execute at @e[tag=D_Pillar] positioned ~ ~1.72 ~ run particle dust 0.2 0.2 0.2 4 ~ ~ ~ 0.5 1.5 0.5 0.5 200 normal @a
    execute at @e[tag=D_Pillar] positioned ~ ~2.6 ~ run particle dust 0.263 0.137 0.278 3 ~ ~1.5 ~ 0.3 2.5 0.3 0.35 150 normal @a
    execute at @e[tag=D_Pillar] positioned ~ ~4.1 ~ run particle dust 0.714 0.714 0.714 2 ~ ~3 ~ 0.2 4 0.2 0.1 100 normal @a

    execute at @e[tag=D_Pillar] run playsound entity.warden.sonic_boom player @a ~ ~ ~ 1.5 1.25
    execute at @e[tag=D_Pillar] run playsound entity.dragon_fireball.explode player @a ~ ~ ~ 1 1.25
    execute at @e[tag=D_Pillar] run playsound item.chorus_fruit.teleport player @a ~ ~ ~ 0.65 1.5

    execute at @e[tag=D_Pillar] positioned ~-1.5 ~ ~-1.5 run tag @e[dx=3,dz=3,dy=8.9,tag=!DP_NoHit,tag=!CantHit] add DP_Hit
    execute as @e[tag=DP_Hit] run function formchanger:use/ex/doppel_brast/damages/shadow_pillar_d

# コストが高い
    execute if entity @s[scores={D_Charge=4..}] run scoreboard players operation @s DEX_Charge -= $Constant.value.1 Constant
    execute if entity @s[scores={D_Charge=5..}] run scoreboard players operation @s DEX_Charge -= $Constant.value.1 Constant
    execute if entity @s[scores={D_Charge=6}] run scoreboard players operation @s DEX_Charge -= $Constant.value.1 Constant
    execute if entity @s[scores={D_Charge=9}] run scoreboard players operation @s DEX_Charge -= $Constant.value.3 Constant