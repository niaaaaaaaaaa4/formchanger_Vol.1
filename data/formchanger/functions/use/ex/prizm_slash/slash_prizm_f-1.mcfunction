
# 防具立てを召喚
    summon minecraft:area_effect_cloud ^ ^ ^9 {Duration: 2,Tags:["Area_Light"]}
    summon minecraft:area_effect_cloud ^ ^ ^-9 {Duration: 2,Tags:["Area_Light"]}
    summon minecraft:area_effect_cloud ^9 ^ ^ {Duration: 2,Tags:["Area_Light"]}
    summon minecraft:area_effect_cloud ^-9 ^ ^ {Duration: 2,Tags:["Area_Light"]}
    summon minecraft:area_effect_cloud ^6.5 ^ ^6.5 {Duration: 2,Tags:["Area_Light"]}
    summon minecraft:area_effect_cloud ^-6.5 ^ ^6.5 {Duration: 2,Tags:["Area_Light"]}
    summon minecraft:area_effect_cloud ^6.5 ^ ^-6.5 {Duration: 2,Tags:["Area_Light"]}
    summon minecraft:area_effect_cloud ^-6.5 ^ ^-6.5 {Duration: 2,Tags:["Area_Light"]}
    summon minecraft:area_effect_cloud ^ ^ ^1.55 {Duration: 2,Tags:["Area_Light_main"]}

# エフェクト君に対して効果を
    execute at @e[tag=Area_Light] run particle end_rod ~ ~ ~ 0 14 0 0.002 148 normal @a
    execute at @e[tag=Area_Light] run particle cloud ~ ~ ~ 0.1 14 0.1 0.0002 305 normal @a
    execute at @e[tag=Area_Light] run playsound block.enchantment_table.use player @a ~ ~ ~ 1.9 1.5
    execute at @e[tag=Area_Light] run playsound entity.generic.explode player @a ~ ~ ~ 0.45 1.8

    particle end_rod ~ ~ ~ 3.25 0.02 3.25 0.013 500 normal @a

# 範囲内のモブに印を
    execute at @s run effect give @e[distance=..13,type=#formchanger:enemy] glowing 10 5
    execute at @s positioned ~ ~10 ~ run effect give @e[distance=..13,type=!item,type=!player,tag=!Area_Light] glowing 10 5
    execute at @s positioned ~ ~20 ~ run effect give @e[distance=..13,type=!item,type=!player,tag=!Area_Light] glowing 10 5
    execute at @s positioned ~ ~30 ~ run effect give @e[distance=..13,type=!item,type=!player,tag=!Area_Light] glowing 10 5