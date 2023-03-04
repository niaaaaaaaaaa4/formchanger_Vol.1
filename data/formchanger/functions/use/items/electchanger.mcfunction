
# オフハンドは、、？
        execute if predicate formchanger:battery_on_offhand run function formchanger:use/items/battery_offhand/kinds_of_batterys
        
        #execute unless data storage nia_context {OFFID:Normal_Battery} run function formchanger:use/change/reset

# 雷雨の時に進化すると、開化になるぞ！！
        execute if entity @s[predicate=formchanger:goods/kit_grade2,predicate=!formchanger:sneak,predicate=formchanger:lightning] run title @s actionbar {"text": "======== enlight? ========","color": "#ff00ea"}
        execute if entity @s[predicate=formchanger:goods/kit_grade2,predicate=formchanger:sneak,predicate=formchanger:lightning] run function formchanger:use/enlighted

# 進化できるぞ！
        execute if entity @s[predicate=formchanger:goods/kit_grade2,predicate=!formchanger:sneak,predicate=!formchanger:lightning] run title @s actionbar {"text": "======== evolve? ========","color": "#00d5ff"}
        execute if entity @s[predicate=formchanger:goods/kit_grade2,predicate=formchanger:sneak,predicate=!formchanger:lightning] run function formchanger:use/evolved
