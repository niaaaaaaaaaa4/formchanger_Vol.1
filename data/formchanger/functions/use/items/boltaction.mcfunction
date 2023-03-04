
# オフハンドは、、？
        execute if predicate formchanger:battery_on_offhand run function formchanger:use/items/battery_offhand/kinds_of_batterys
        
        #execute unless data storage nia_context {OFFID:Normal_Battery} run function formchanger:use/change/reset

# 進化できるぞ！
        execute if entity @s[predicate=formchanger:goods/kit_grade3,predicate=!formchanger:sneak] run title @s actionbar {"text": "======== evolve? ========","color": "#00d5ff"}
        execute if entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:sneak] run function formchanger:use/evolved
