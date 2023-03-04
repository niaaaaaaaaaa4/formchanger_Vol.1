
# オフハンドは、、？
        execute if predicate formchanger:battery_on_offhand run function formchanger:use/items/battery_offhand/kinds_of_batterys

       #execute unless data storage nia_context {OFFID:Normal_Battery} run function formchanger:use/change/reset

# 特殊効果
  # スニーク中浮遊効果
    execute if entity @s[scores={Nia_Sneaktotaltime=300..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run tag @s add Levitation_Now
    execute if entity @s[scores={Nia_Sneaktotaltime=300..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run effect give @s levitation 1 1
    execute if entity @s[scores={Nia_Sneaktotaltime=300..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run particle firework ~ ~0.1 ~ 0.25 -0.2 0.25 0.05 15 normal @s
    execute if entity @s[scores={Nia_Sneaktotaltime=300..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run playsound entity.firework_rocket.shoot player @s ~ ~-1 ~ 0.1 1.66

    execute if entity @s[tag=Levitation_Now,predicate=!formchanger:sneak] run effect clear @s levitation

# エンドにいる間は、開化になるぞ！
        execute if entity @s[predicate=formchanger:goods/kit_grade2,predicate=!formchanger:sneak,predicate=formchanger:in_end] run title @s actionbar {"text": "======== enlight? ========","color": "#ff00ea"}
        execute if entity @s[predicate=formchanger:goods/kit_grade2,predicate=formchanger:sneak,predicate=formchanger:in_end] run function formchanger:use/enlighted
