
# フォームチェンジ！
    # オノ-->ツルハシ
        execute if entity @s[predicate=formchanger:sneak,predicate=formchanger:tooltypes/axe,scores={Nia_M_Sneaktime=4}] run function formchanger:use/change/nextpickaxe
            execute if entity @s[predicate=formchanger:tooltypes/axe] run title @s actionbar {"text":" === next --> pickaxe === ","color":"#82f0ff"}

    # ツルハシ-->シャベル
        execute if entity @s[predicate=formchanger:sneak,predicate=formchanger:tooltypes/pickaxe,scores={Nia_M_Sneaktime=4}] run function formchanger:use/change/nextshovel
            execute if entity @s[predicate=formchanger:tooltypes/pickaxe] run title @s actionbar {"text":" === next --> shovel === ","color":"#82f0ff"}

    # シャベル-->クワ
        execute if entity @s[predicate=formchanger:sneak,predicate=formchanger:tooltypes/shovel,scores={Nia_M_Sneaktime=4}] run function formchanger:use/change/nexthoe
            execute if entity @s[predicate=formchanger:tooltypes/shovel] run title @s actionbar {"text":" === next --> hoe === ","color":"#82f0ff"}

    # クワ-->オノ
        execute if entity @s[predicate=formchanger:sneak,predicate=formchanger:tooltypes/hoe,scores={Nia_M_Sneaktime=4}] run function formchanger:use/change/nextaxe
            execute if entity @s[predicate=formchanger:tooltypes/hoe] run title @s actionbar {"text":" === next --> axe === ","color":"#82f0ff"}
