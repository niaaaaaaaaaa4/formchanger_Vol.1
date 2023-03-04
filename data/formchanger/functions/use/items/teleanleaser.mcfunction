
# オフハンドは、、？
        execute if predicate formchanger:battery_on_offhand run function formchanger:use/items/battery_offhand/kinds_of_batterys

        # 特殊効果発生
          # 静電気のエフェクト
            execute unless predicate formchanger:batterys/f_battery/thunderbolt_on_offhand run particle minecraft:dust 1 0.8 0 0.3 ~ ~ ~ 3.1 0.25 3.1 1 18 normal @s
            execute if predicate formchanger:batterys/f_battery/thunderbolt_on_offhand run particle minecraft:dust 0.851 1 0 0.3 ~ ~ ~ 5.1 0.55 5.1 1 18 normal @s

          # 静電気によるアイテム広範囲引き寄せ
            execute at @e[type=item,distance=..6.2] as @s run particle minecraft:dust 1 0.8 0 1.3 ~ ~0.3 ~ 0 0 0 0.02 3 normal @s
            execute as @e[type=item,distance=..6.2] at @s facing entity @p[predicate=formchanger:teleanleaser_on_mainhand] feet run tp @s ^ ^ ^0.25
            execute at @e[type=item,distance=6.2..9.2] as @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand] run particle minecraft:dust 0.91 1 0.082 1.3 ~ ~0.3 ~ 0 0 0 0.02 3 normal @s
            execute as @e[type=item,distance=6.2..9.2] at @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand] facing entity @p[predicate=formchanger:teleanleaser_on_mainhand,sort=nearest] feet run tp @s ^ ^ ^0.45

            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

          # 放電のエフェクト
            execute unless predicate formchanger:batterys/f_battery/thunderbolt_on_offhand run particle minecraft:dust 1 0.8 0 1.1 ~ ~ ~ 3.1 3.1 3.1 1 9 normal @s
            execute if predicate formchanger:batterys/f_battery/thunderbolt_on_offhand run particle minecraft:dust 1 0.984 0 1.1 ~ ~ ~ 5.1 5.1 5.1 1.99 9 normal @s

          # 放電による範囲ダメージ＆鈍足
            effect give @e[type=!item,distance=1..6.2] slowness 3 1 true
            execute if predicate formchanger:batterys/f_battery/thunderbolt_on_offhand run effect give @e[type=!item,distance=6.2..9.2] slowness 3 1 true

            execute at @e[type=!item,distance=1..6.2] as @s run particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0.02 3 normal @s
            execute at @e[type=!item,distance=6.2..9.2] as @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand] run particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0.02 3 normal @s
            
            execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=!formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=300..500}] at @e[type=!item,distance=1..6.2] as @s run particle minecraft:electric_spark ~ ~1 ~ 0.25 0.25 0.25 0.02 10 normal @s
            execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=!formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=600..}] at @e[type=!item,distance=1..6.2] as @s run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=300..500}] at @e[type=!item,distance=1..9.2] as @s run particle minecraft:electric_spark ~ ~1 ~ 0.15 0.15 0.15 0.12 18 normal @s
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=600..620}] at @e[type=!item,distance=1..9.2] as @s run function formchanger:use/ex/thunderbolt

          # 追加の雷撃
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=710..720}] at @e[type=!item,distance=1..9.2] as @s positioned ^ ^ ^2.5 run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=710..720}] at @e[type=!item,distance=1..9.2] as @s positioned ^ ^ ^-2.5 run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=710..720}] at @e[type=!item,distance=1..9.2] as @s positioned ^-2.5 ^ ^ run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=710..720}] at @e[type=!item,distance=1..9.2] as @s positioned ^2.5 ^ ^ run function formchanger:use/ex/thunderbolt

            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=845..860}] at @e[type=!item,distance=1..9.2] as @s positioned ^ ^ ^3.5 run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=845..860}] at @e[type=!item,distance=1..9.2] as @s positioned ^ ^ ^-3.5 run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=845..860}] at @e[type=!item,distance=1..9.2] as @s positioned ^3.5 ^ ^ run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=845..860}] at @e[type=!item,distance=1..9.2] as @s positioned ^-3.5 ^ ^ run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=845..860}] at @e[type=!item,distance=1..9.2] as @s positioned ^2.5 ^ ^2.5 run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=845..860}] at @e[type=!item,distance=1..9.2] as @s positioned ^-2.5 ^ ^2.5 run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=845..860}] at @e[type=!item,distance=1..9.2] as @s positioned ^2.5 ^ ^-2.5 run function formchanger:use/ex/thunderbolt
            execute if entity @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=845..860}] at @e[type=!item,distance=1..9.2] as @s positioned ^-2.5 ^ ^-2.5 run function formchanger:use/ex/thunderbolt
        
            execute unless predicate formchanger:sneak run scoreboard players reset @s Nia_Sneaktotaltime
            

scoreboard players reset @s[predicate=!formchanger:batterys/f_battery/thunderbolt_on_offhand,scores={Nia_Sneaktotaltime=600..}] Nia_Sneaktotaltime 
scoreboard players reset @s[predicate=formchanger:batterys/f_battery/thunderbolt_on_offhand,scores={Nia_Sneaktotaltime=900..}] Nia_Sneaktotaltime 