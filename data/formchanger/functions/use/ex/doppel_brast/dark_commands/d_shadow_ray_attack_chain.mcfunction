
# パーティクルなど
    particle dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 3 2 normal @a
    particle dust 0.212 0 0.196 1 ~ ~ ~ 0.01 0.01 0.01 1 12 normal @a
    particle dragon_breath ~ ~ ~ 1 1 1 0 1 normal @a

    execute at @s run tp @s ~ ~ ~ ~14.5 ~
    execute at @s run particle dust 0.055 0.024 0.051 1.65 ^ ^ ^1.5 0 0 0 0 3 normal @a
    execute at @s rotated ~ 30 run particle dust 0.231 0.024 0.302 0.95 ^ ^ ^1.5 0 0 0 0 3 normal @a
    execute at @s rotated ~ ~-30 run particle dust 0.247 0.008 0.322 0.95 ^ ^ ^1.5 0 0 0 0 3 normal @a
    execute at @s rotated ~ ~70 run particle dust 0.345 0.129 0.412 0.65 ^ ^ ^1.5 0 0 0 0 3 normal @a
    execute at @s rotated ~ ~-70 run particle dust 0.345 0.149 0.4 0.65 ^ ^ ^1.5 0 0 0 0 3 normal @a

# スコアボードを持ってくる
    execute if entity @s[tag=DRA_Set] run scoreboard players set @s Motionvalue 200
    execute if entity @s[tag=DRA_Set] run tag @s remove DRA_Set

# 効果
    execute if entity @s[scores={Motionvalue=..100}] run function formchanger:use/ex/doppel_brast/dark_commands/d_shadow_shoot_1