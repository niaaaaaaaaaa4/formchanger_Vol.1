
# 自身には当たらないぞ
    #tag @s add DP_NoHit

# 周囲のモブに盲目を付与、動きを止める
    execute if entity @s[scores={D_Charge=7}] run particle dust 0 0 0 1 ~ ~ ~ 3.25 2.25 3.25 3 233 normal @a
    execute if entity @s[scores={D_Charge=7}] as @e[distance=..6.5,tag=!DP_NoHit,type=!#formchanger:projectile,tag=!Get_DPE,limit=5,sort=random] run tag @s add DP_Hit
    execute if entity @s[scores={D_Charge=8}] run particle dust 0 0 0 1 ~ ~ ~ 5.25 4.25 5.25 3 333 normal @a
    execute if entity @s[scores={D_Charge=8}] as @e[distance=..9.5,tag=!DP_NoHit,type=!#formchanger:projectile,tag=!Get_DPE,limit=12,sort=random] run tag @s add DP_Hit

    execute at @e[tag=DP_Hit] run particle dust 0.141 0.141 0.141 9 ~ ~0.55 ~ 0.15 0.15 0.15 1.2 28 normal @a
    execute at @e[tag=DP_Hit] run summon armor_stand ~ ~1.12 ~ {Tags:["Get_DPE"],NoGravity:true,Small:true,Invisible:true}
    execute as @e[tag=Get_DPE] run scoreboard players set @s Motionvalue 130
    
    execute as @e[tag=DP_Hit] run scoreboard players set @s DP_Cooldown 60
    execute as @e[tag=DP_Hit] run data modify entity @s NoAI set value true 
    execute as @e[tag=DP_Hit] run effect give @s darkness 5 5 true
    execute as @e[tag=DP_Hit] run effect give @s resistance 5 5 true
    execute at @e[tag=DP_Hit] run particle dust 0 0 0 5 ~ ~1.1 ~ 0 0 0 0 3 normal @a

# リセット
    tag @e remove DP_Hit
    