
# 解除
    tag @s remove EX_Doppel
    scoreboard players reset @s DEX_Charge

# 減った満腹度を回復しておく
    effect give @s saturation 1 100 true
    effect give @s instant_health 1 0 true

    execute if entity @s[tag=!EX_Doppel] run attribute @s generic.movement_speed base set 0.1
    execute if entity @s[tag=!EX_Doppel] run attribute @s generic.max_health base set 20

# パーティクル
    particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.05 30 normal @a
    playsound entity.warden.heartbeat player @a ~ ~ ~ 0.85 0.65