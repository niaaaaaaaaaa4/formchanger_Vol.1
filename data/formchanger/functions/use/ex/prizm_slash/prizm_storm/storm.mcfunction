
# エンティティの方向を向けて、５ブロック離れるまで再帰。光の斬撃をとばす
    particle end_rod ~ ~ ~ 0 0 0 0 1 force @a
    playsound block.amethyst_cluster.step player @a ~ ~ ~ 0.2 1.35

    execute as @e[type=#formchanger:enemy,dx=0] positioned ~-0.75 ~-0.75 ~-0.75 if entity @e[dx=0] run effect give @s wither 1 0 true

    execute positioned ^ ^ ^0.15 if entity @s[distance=..12] run function formchanger:use/ex/prizm_slash/prizm_storm/storm