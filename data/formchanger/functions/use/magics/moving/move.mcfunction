
# 前進
    tp @s[tag=S_10,tag=!Stop] ^ ^ ^1 ~ ~

# 音を鳴らし続ける
    execute if entity @s[tag=M_ammo] run playsound block.amethyst_block.step player @a ~ ~ ~ 0.25 0.9
    
# 敵の衝突判定
    execute as @e[dx=0,sort=nearest,limit=1,tag=!Nia_M,type=!player] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run function formchanger:use/magics/moving/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #formchanger:no_collision run function formchanger:use/magics/moving/wall