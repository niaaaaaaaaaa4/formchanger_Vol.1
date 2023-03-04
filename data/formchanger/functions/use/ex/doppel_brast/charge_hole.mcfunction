
# パーティクル
    particle dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 3 2 normal @a
    particle dust 0.212 0 0.196 1 ~ ~ ~ 0.01 0.01 0.01 1 12 normal @a

# スコアボードを持ってくる
    execute if entity @s[tag=D_H_Set] run scoreboard players set @s Motionvalue 120
    execute if entity @s[tag=D_H_Set] run tag @s remove D_H_Set

# 吸引
    tag @e[distance=..9,tag=!DH_No_Hit] add DH_Absolve
    execute as @e[tag=DH_Absolve] at @s facing entity @e[tag=D_Hole_Core] feet run tp ^ ^ ^0.11
    data modify entity @e[type=#formchanger:projectile,distance=..5,limit=1] NoGravity set value true

# スコアボードに応じて反応
    #execute if score @s Motionvalue matches 1 run summon tnt ~ ~ ~1.5 {Fuse:0,NoGravity:true,Silent:true}
    #execute if score @s Motionvalue matches 1 run summon tnt ~ ~ ~-1.5 {Fuse:0,NoGravity:true,Silent:true}
    #execute if score @s Motionvalue matches 1 run summon tnt ~1.5 ~ ~ {Fuse:0,NoGravity:true,Silent:true}
    execute if score @s Motionvalue matches 1 run summon creeper ~ ~ ~ {ExplosionRadius:4,NoGravity:true,Fuse:0}
    #execute if score @s Motionvalue matches 2 run summon tnt ~ ~ ~ {Fuse:0,NoGravity:true,Silent:true}
    #execute if score @s Motionvalue matches 3 run summon tnt ~ ~ ~ {Fuse:0,NoGravity:true,Silent:true}
    #execute if score @s Motionvalue matches 4 run summon tnt ~ ~ ~ {Fuse:0,NoGravity:true,Silent:true}
    #execute if score @s Motionvalue matches 5 run summon tnt ~ ~ ~ {Fuse:0,NoGravity:true,Silent:true}

    execute if score @s Motionvalue matches 1..10 run particle dust 0.071 0.031 0.075 5 ~ ~ ~ 3 3 3 6 150 normal @a
    execute if score @s Motionvalue matches 1..2 run particle dust 0.318 0.004 0.345 5 ~ ~ ~ 3 3 3 6 150 normal @a
    execute if score @s Motionvalue matches 1 run particle dust 0.239 0.239 0.239 5 ~ ~ ~ 3 3 3 6 150 normal @a
        execute if score @s Motionvalue matches 1 run particle dust 0 0 0 90 ~ ~ ~ 10 10 10 0 200 normal @a
        execute if score @s Motionvalue matches 1 run particle explosion_emitter ~ ~ ~ 1 1 1 0 11 normal @a

    execute if score @s Motionvalue matches 1..10 run playsound block.amethyst_cluster.break player @a ~ ~ ~ 0.11 0.3
    execute if score @s Motionvalue matches 1..2 run playsound entity.warden.heartbeat player @a ~ ~ ~ 1 0.65 
    execute if score @s Motionvalue matches 1 run playsound entity.warden.death player @a ~ ~ ~ 5 0.45
        execute if score @s Motionvalue matches 1 run playsound entity.warden.death player @a ~ ~ ~ 5 0.25
        execute if score @s Motionvalue matches 1 run playsound entity.dragon_fireball.explode player @a ~ ~ ~ 20 0.65

    execute if score @s Motionvalue matches 5..10 run tag @e[distance=..4,tag=!D_Hole_Core] add DHL_Hit
    execute if score @s Motionvalue matches 3 run tag @e[distance=..3,tag=!D_Hole_Core] add DHLL_Hit
    execute if score @s Motionvalue matches 1 run tag @e[distance=3.02..7,tag=!D_Hole_Core] add DHLLL_Hit
    
    execute as @e[tag=DHL_Hit] run function formchanger:use/ex/doppel_brast/damages/black_hole_d
    execute as @e[tag=DHLL_Hit] run function formchanger:use/ex/doppel_brast/damages/black_hole_d-ex
    execute as @e[tag=DHLLL_Hit] run function formchanger:use/ex/doppel_brast/damages/black_hole_d-inp

# remove
    tag @e remove DH_Absolve
    kill @e[type=#formchanger:projectile]