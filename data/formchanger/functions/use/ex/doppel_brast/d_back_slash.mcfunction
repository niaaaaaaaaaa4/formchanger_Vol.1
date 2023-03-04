
# 斬撃射出  
# 防具立てを召喚
    execute at @s run summon armor_stand ^ ^ ^0.5 {Tags:[Slash_1,Back_Slash_D],NoGravity:true,Small:true,Invisible:true}
    execute at @s run summon armor_stand ^ ^ ^-0.5 {Tags:[Slash_2,Back_Slash_D],NoGravity:true,Small:true,Invisible:true}

    execute at @s run summon armor_stand ^ ^0.5 ^ {Tags:[Slash_3,Back_Slash_D],NoGravity:true,Small:true,Invisible:true}
    execute at @s run summon armor_stand ^ ^-0.5 ^ {Tags:[Slash_4,Back_Slash_D],NoGravity:true,Small:true,Invisible:true}

    execute as @e[tag=Back_Slash_D] at @s run tp @s ^ ^ ^ facing entity @p[sort=nearest,limit=1]

    execute at @s run summon armor_stand ^ ^ ^-2.85 {Tags:[Slash_5,Slash_5-1,Back_Slash_D],NoGravity:true,Small:true,Invisible:true}
    execute at @s run summon armor_stand ^-2.5 ^ ^-1 {Tags:[Slash_5,Slash_5-2,Back_Slash_D],NoGravity:true,Small:true,Invisible:true}
    execute at @s run summon armor_stand ^2.5 ^ ^-1 {Tags:[Slash_5,Slash_5-3,Back_Slash_D],NoGravity:true,Small:true,Invisible:true}

# 確認用モブの頭装備コマンド
    #item replace entity @e[tag=Slash_5] armor.head with skeleton_skull

# 実行座標を召喚！＆パーティクル・ヒット
    execute as @e[tag=Back_Slash_D,tag=!Slash_5] at @s positioned ^ ^ ^2 positioned ~ ~ ~ rotated as @e[tag=Back_Slash_D,tag=!Slash_5] positioned ^ ^ ^0.1 rotated as @e[tag=Back_Slash_D,tag=!Slash_5] positioned ^ ^ ^0.2 rotated as @e[tag=Back_Slash_D,tag=!Slash_5] positioned ^ ^ ^0.4 rotated as @e[tag=Back_Slash_D,tag=!Slash_5] positioned ^ ^ ^0.8 rotated as @e[tag=Back_Slash_D,tag=!Slash_5] positioned ^ ^ ^1.6 unless entity @e[tag=Slash_5,distance=..3.9] if entity @s[distance=2.4..3.45] run particle dust 0.141 0.141 0.141 1 ~ ~ ~ 0.001 0.001 0.001 0.01 3 normal
    execute if entity @s[scores={D_Charge=2}] as @e[tag=Back_Slash_D,tag=!Slash_5] at @s positioned ^ ^ ^2 positioned ~ ~ ~ rotated as @e[tag=Back_Slash_D,tag=!Slash_5] positioned ^ ^ ^0.1 rotated as @e[tag=Back_Slash_D,tag=!Slash_5] positioned ^ ^ ^0.2 rotated as @e[tag=Back_Slash_D,tag=!Slash_5] positioned ^ ^ ^0.4 rotated as @e[tag=Back_Slash_D,tag=!Slash_5] positioned ^ ^ ^0.8 rotated as @e[tag=Back_Slash_D,tag=!Slash_5] positioned ^ ^ ^1.6 rotated as @e[tag=Back_Slash_D,tag=!Slash_5] unless entity @e[tag=Slash_5,distance=..4.3] if entity @s[distance=3.6..3.8] run particle dust 0.506 0 0.706 0.55 ~ ~ ~ 0 0 0 0.01 10 normal

    playsound item.trident.hit player @a ~ ~ ~ 1.9 0.75 
    
    execute at @s as @e[distance=1..3.5] run tag @s add A
    execute at @e[tag=Slash_5-1] as @e[distance=1..9,type=!item,tag=!Back_Slash_D] run tag @s add B
    execute at @e[tag=Slash_5-2] as @e[distance=..3.3,type=!item,tag=!Back_Slash_D] run tag @s remove B
    execute at @e[tag=Slash_5-3] as @e[distance=..3.3,type=!item,tag=!Back_Slash_D] run tag @s remove B

    execute as @e[tag=A,tag=B] run function formchanger:use/ex/doppel_brast/damages/back_slash_d

    tag @e remove A
    tag @e remove B

        playsound item.crossbow.loading_end player @a ~ ~ ~ 0.1 1.2 

# 自身の後方にテレポート
    execute if entity @s[scores={D_Charge=1}] rotated ~ 0 if block ^ ^ ^-2.85 #formchanger:no_collision run tp @s ^ ^ ^-2.85 ~ ~
    
    execute if entity @s[scores={D_Charge=1}] rotated ~ 0 if block ^ ^ ^-2.85 #formchanger:no_collision positioned ^ ^ ^-2.85 run particle dust 0 0 0 1 ~ ~ ~ 0.25 0.65 0.25 5 390 force @s
    execute if entity @s[scores={D_Charge=1}] rotated ~ 0 if block ^ ^ ^-2.85 #formchanger:no_collision positioned ^ ^ ^-2.85 run particle dust 0.612 0.612 0.612 1 ~ ~ ~ 0.15 0.85 0.15 5 190 force @s

    execute if entity @s[scores={D_Charge=2}] rotated ~ 0 if block ^ ^ ^-5.9 #formchanger:no_collision run tp @s ^ ^ ^-5.9 ~ ~

    execute if entity @s[scores={D_Charge=2}] rotated ~ 0 if block ^ ^ ^-2.85 #formchanger:no_collision positioned ^ ^ ^-5.9 run particle dust 0 0 0 1 ~ ~ ~ 0.25 0.65 0.25 5 390 force @s
    execute if entity @s[scores={D_Charge=2}] rotated ~ 0 if block ^ ^ ^-2.85 #formchanger:no_collision positioned ^ ^ ^-5.9 run particle dust 0.612 0.612 0.612 1 ~ ~ ~ 0.15 0.85 0.15 5 190 force @s
    execute if entity @s[scores={D_Charge=2}] rotated ~ 0 if block ^ ^ ^-2.85 #formchanger:no_collision positioned ^ ^ ^-5.9 run particle dust 0.31 0 0.431 1 ~ ~ ~ 0.15 0.85 0.15 5 190 force @s

    playsound entity.enderman.teleport player @s ~ ~ ~ 0.35 0.85
# ｻﾖﾅﾗ防具立て、、
    kill @e[tag=Back_Slash_D]

