
# 自分自身を中心に三方向に弾を発射
    execute at @s run summon area_effect_cloud ^0.8 ^1.5 ^0.8 {Duration:120,Tags:["DR_ammo","DR_ammoset"]}
    execute at @s[scores={Motionvalue=1}] run summon area_effect_cloud ^ ^ ^1.8 {Duration:120,Tags:["DR_ammo","DR_ammoset"]}
    execute at @s[scores={Motionvalue=1}] run summon area_effect_cloud ^ ^ ^-1.8 {Duration:120,Tags:["DR_ammo","DR_ammoset"]}
    execute at @s[scores={Motionvalue=1}] run summon area_effect_cloud ^-1.8 ^ ^ {Duration:120,Tags:["DR_ammo","DR_ammoset"]}
    execute at @s[scores={Motionvalue=1}] run summon area_effect_cloud ^1.8 ^ ^ {Duration:120,Tags:["DR_ammo","DR_ammoset"]}

    execute at @s[tag=2nd] run summon area_effect_cloud ^-0.8 ^1.5 ^0.8 {Duration:120,Tags:["DR_ammo","DR_ammoset"]}
    execute at @s[tag=2nd] run summon area_effect_cloud ^ ^1.5 ^1.1 {Duration:120,Tags:["DR_ammo","DR_ammoset"]}

# スコアボードセット
    execute as @e[tag=DR_ammoset] run scoreboard players set @s Motionvalue 130
    execute as @e[tag=DR_ammoset] run tag @s remove DR_ammoset
