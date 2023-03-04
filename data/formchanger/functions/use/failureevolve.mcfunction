# テキスト表示
    execute at @s[scores={EV_cooldown=0}] run tellraw @s {"text":"---------------- 条件を満たしていないようだ ---------------","color": "#006073"}

    execute at @s[scores={EV_cooldown=0}] run title @s actionbar {"text": "------- failured....... -------","color": "#006073"}
# サウンド＆パーティクル発生
    execute at @s[scores={EV_cooldown=0}] run playsound block.fence_gate.open player @s ~ ~ ~ 0.5 0.8

    execute at @s[scores={EV_cooldown=0}] run particle explosion ~ ~2 ~

gamerule sendCommandFeedback true