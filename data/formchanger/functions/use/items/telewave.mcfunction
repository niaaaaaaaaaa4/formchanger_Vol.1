
# オフハンドは、、？
        execute if predicate formchanger:battery_on_offhand run function formchanger:use/items/battery_offhand/kinds_of_batterys
        
        #execute unless data storage nia_context {OFFID:Normal_Battery} run function formchanger:use/change/reset

        # 特殊効果発生
          # 静電気のエフェクト
            particle minecraft:dust 1 0.8 0 0.3 ~ ~ ~ 2.275 0.25 2.275 0.001 10 normal @s

          # 静電気によるアイテム広範囲引き寄せ
            execute at @e[type=item,distance=..4.65] as @s run particle minecraft:dust 1 0.8 0 1 ~ ~0.3 ~ 0 0 0 0.02 3 normal @s
            execute as @e[type=item,distance=..4.65] at @s facing entity @p[predicate=formchanger:telewave_on_mainhand] feet run tp @s ^ ^ ^0.25

            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

# 開化できるぞ！
        execute if entity @s[predicate=formchanger:goods/kit_grade3,predicate=!formchanger:sneak,predicate=formchanger:lightning] run title @s actionbar {"text": "======== enlight? ========","color": "#ff00ea"}
        execute if entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:sneak,predicate=formchanger:lightning] run function formchanger:use/enlighted
