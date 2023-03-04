
# 防具立てを召喚
    execute at @s run summon armor_stand ^ ^ ^0.5 {Tags:[Slash_1,Slash_P],NoGravity:true,Small:true,Invisible:true}
    execute at @s run summon armor_stand ^ ^ ^-0.5 {Tags:[Slash_2,Slash_P],NoGravity:true,Small:true,Invisible:true}

    execute at @s run summon armor_stand ^ ^0.5 ^ {Tags:[Slash_3,Slash_P],NoGravity:true,Small:true,Invisible:true}
    execute at @s run summon armor_stand ^ ^-0.5 ^ {Tags:[Slash_4,Slash_P],NoGravity:true,Small:true,Invisible:true}

    execute as @e[tag=Slash_P] at @s run tp @s ^ ^ ^ facing entity @p[sort=nearest,limit=1]

    execute at @s run summon armor_stand ^ ^ ^-2.85 {Tags:[Slash_5,Slash_P],NoGravity:true,Small:true,Invisible:true}

# 確認用モブの頭装備コマンド
    #item replace entity @e[tag=Slash_5] armor.head with skeleton_skull

# 実行座標を召喚！＆パーティクル・ヒット
    execute as @e[tag=Slash_P,tag=!Slash_5] at @s positioned ^ ^ ^2 positioned ~ ~ ~ rotated as @e[tag=Slash_P,tag=!Slash_5] positioned ^ ^ ^0.1 rotated as @e[tag=Slash_P,tag=!Slash_5] positioned ^ ^ ^0.2 rotated as @e[tag=Slash_P,tag=!Slash_5] positioned ^ ^ ^0.4 rotated as @e[tag=Slash_P,tag=!Slash_5] positioned ^ ^ ^0.8 rotated as @e[tag=Slash_P,tag=!Slash_5] positioned ^ ^ ^1.6 unless entity @e[tag=Slash_5,distance=..3.9] if entity @s[distance=3.6..3.9] run particle end_rod ~ ~ ~ 0 0 0 0.0001 2 normal
    execute as @e[tag=Slash_P,tag=!Slash_5] at @s positioned ^ ^ ^2 positioned ~ ~ ~ rotated as @e[tag=Slash_P,tag=!Slash_5] positioned ^ ^ ^0.1 rotated as @e[tag=Slash_P,tag=!Slash_5] positioned ^ ^ ^0.2 rotated as @e[tag=Slash_P,tag=!Slash_5] positioned ^ ^ ^0.4 rotated as @e[tag=Slash_P,tag=!Slash_5] positioned ^ ^ ^0.8 rotated as @e[tag=Slash_P,tag=!Slash_5] positioned ^ ^ ^1.6 unless entity @e[tag=Slash_5,distance=..3.9] if entity @s[distance=2.4..3.45] run particle cloud ~ ~ ~ 0 0 0 0.01 1 normal

    playsound block.amethyst_block.hit player @a ~ ~ ~ 1.9 0.75 
    
    execute at @s as @e[distance=0.5..3.5,type=!player] run tag @s add A
    execute at @s as @e[distance=3.6..4.0,type=!player] run tag @s add C
    execute at @e[tag=Slash_5] as @e[distance=0.5..9,type=#formchanger:enemy] run tag @s add B
    
    execute at @s as @e[tag=C,tag=B] run effect give @s glowing 3 5 true


    execute as @e[tag=A,tag=B] run function formchanger:use/ex/prizm_slash/damages/slash_p_n
    execute as @e[tag=C,tag=B] run function formchanger:use/ex/prizm_slash/damages/slash_p_c

    tag @e remove A
    tag @e remove B
    tag @e remove C

    #execute if entity @e[tag=SAY] run function formchanger:use/ex/flowbrast_damage
    #execute if entity @e[tag=SAY] run tag @e[tag=SAY] remove SAY
        playsound item.crossbow.loading_end player @a ~ ~ ~ 0.1 1.2 

# ｻﾖﾅﾗ防具立て、、
    kill @e[tag=Slash_P]
