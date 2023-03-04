
# オフハンドは、、？
        execute if predicate formchanger:battery_on_offhand run function formchanger:use/items/battery_offhand/kinds_of_batterys

       #execute unless data storage nia_context {OFFID:Normal_Battery} run function formchanger:use/change/reset

# 特殊効果
  # スニーク中浮遊効果
    execute if entity @s[scores={Nia_Sneaktotaltime=300..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run tag @s add Levitation_Now
    execute if entity @s[scores={Nia_Sneaktotaltime=300..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run effect give @e[distance=..2] levitation 1 1
    execute if entity @s[scores={Nia_Sneaktotaltime=300..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run particle firework ~ ~0.1 ~ 0.95 -0.2 0.95 0.15 25 normal @s
    execute if entity @s[scores={Nia_Sneaktotaltime=300..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run playsound entity.firework_rocket.shoot player @s ~ ~-1 ~ 0.1 1.66

    execute if entity @s[tag=Levitation_Now,predicate=!formchanger:sneak] run effect clear @e[distance=..2] levitation
    execute if entity @s[tag=Levitation_Now,predicate=!formchanger:sneak] run tag @s remove Levitation_Now

  # シフト時範囲浮遊
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1..50}] run summon armor_stand ^ ^1 ^2.55 {NoGravity:true,Invisible:false,Tags:[Target_F]}

    execute at @e[tag=Target_F] run playsound entity.firework_rocket.blast player @s ~ ~1 ~ 0.5 1.55
    execute at @e[tag=Target_F] run particle firework ~ ~1 ~ 0 0 0 0.6 30 normal @s
    execute at @e[tag=Target_F] run effect give @e[distance=..3.25,type=!player] levitation 1 6
    execute at @e[tag=Target_F] as @e[distance=..3.25,type=!player] run function formchanger:use/ex/flowbrast
    #execute if score @s Hit_Left matches 1.. run scoreboard players reset @s Hit_Left

    kill @e[tag=Target_F]
    
# エンドシティにいる間は、開化になるぞ！
        execute if entity @s[predicate=formchanger:goods/kit_grade3,predicate=!formchanger:sneak] if biome ~ ~ ~ #has_structure/end_city run title @s actionbar {"text": "======== enlight? ========","color": "#ff00ea"}
        execute if entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:sneak] if biome ~ ~ ~ #has_structure/end_city run function formchanger:use/enlighted
