
# オフハンドは、、？
    execute if predicate formchanger:battery_on_offhand run function formchanger:use/items/battery_offhand/kinds_of_batterys

# 特殊効果
# 進度に応じた演出
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={Nia_Sneaktotaltime=300..}] run particle dust 0.714 0.714 0.714 1 ~ ~ ~ 0.1 0.15 0.1 5 10 force @s
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={Nia_Sneaktotaltime=900..}] run particle dust 0.655 0.655 0.655 1.1 ~ ~ ~ 0.1 0.2 0.1 5 30 force @s
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={Nia_Sneaktotaltime=1500..}] run particle dust 0.447 0.447 0.447 1.2 ~ ~ ~ 0.1 0.35 0.1 5 50 force @s
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={Nia_Sneaktotaltime=2100..}] run particle dust 0.275 0.271 0.271 1.3 ~ ~ ~ 0.15 0.45 0.15 5 100 force @s
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={Nia_Sneaktotaltime=2400..}] run particle dust 0.231 0.231 0.231 1.5 ~ ~ ~ 0.2 0.65 0.2 5 100 force @s
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={Nia_Sneaktotaltime=2700..}] run particle dust 0 0 0 1.9 ~ ~ ~ 0.3 0.9 0.3 5 100 force @s
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={Nia_Sneaktotaltime=2900..}] run particle dust 0 0 0 2.2 ~ ~ ~ 0.5 1.5 0.5 5 150 force @s
    
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={Nia_Sneaktotaltime=3000..}] run scoreboard players reset @s Nia_Sneaktotaltime 

# 十段階目までためると強制発動、途中でシフトを離すことでも、進捗に応じた効果を得られる
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=10},tag=!EX_Doppel] run function formchanger:use/ex/doppel_brast/doppel_boost
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=15},tag=EX_Doppel] run function formchanger:use/ex/doppel_brast/doppel_remove
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=10},tag=!EX_Doppel] run scoreboard players reset @s D_Charge
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=1..},predicate=!formchanger:sneak] run scoreboard players operation @s DEX_Charge -= $Constant.value.1 Constant

    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=1..2},predicate=!formchanger:sneak,tag=!EX_Doppel] run function formchanger:use/ex/doppel_brast/d_back_slash
        execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=1..2},predicate=!formchanger:sneak,tag=EX_Doppel] run function formchanger:use/ex/doppel_brast/dark_commands/d_shadow_dunser
        
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=3},predicate=!formchanger:sneak,tag=!EX_Doppel] run function formchanger:use/ex/doppel_brast/d_black_shoot_3
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=4},predicate=!formchanger:sneak,tag=!EX_Doppel] run function formchanger:use/ex/doppel_brast/d_black_shoot_11
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=5..6},predicate=!formchanger:sneak,tag=!EX_Doppel] run function formchanger:use/ex/doppel_brast/d_black_laser
        execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=3..6},predicate=!formchanger:sneak,tag=EX_Doppel] run function formchanger:use/ex/doppel_brast/dark_commands/d_shadow_pillar

    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=7..8},predicate=!formchanger:sneak,tag=!EX_Doppel] run function formchanger:use/ex/doppel_brast/d_black_powder
        execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=7},predicate=!formchanger:sneak,tag=EX_Doppel] run function formchanger:use/ex/doppel_brast/dark_commands/d_shadow_ray
        execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=8},predicate=!formchanger:sneak,tag=EX_Doppel] run function formchanger:use/ex/doppel_brast/dark_commands/d_shadow_ray_attack
    
    execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=9},predicate=!formchanger:sneak,tag=!EX_Doppel] run function formchanger:use/ex/doppel_brast/d_black_hole
        execute if entity @s[predicate=formchanger:batterys/f_battery/doppelganger_on_offhand,scores={D_Charge=9},predicate=!formchanger:sneak,tag=EX_Doppel] run function formchanger:use/ex/doppel_brast/dark_commands/d_shadow_pillar

  
    execute unless entity @s[predicate=formchanger:sneak] run scoreboard players reset @s D_Charge

    execute if entity @s[tag=EX_Doppel] run particle dragon_breath ~ ~ ~ 0 0 0 0.02 1 normal @a
        execute if entity @s[tag=EX_Doppel] run particle dust 0.102 0.024 0.082 2 ~ ~ ~ 0.2 0.2 0.2 0.1 1 normal @a
        execute if entity @s[tag=EX_Doppel] run effect give @s hunger 1 255 true
        execute if entity @s[tag=EX_Doppel] run effect give @s wither 1 0 true
        execute if entity @s[tag=EX_Doppel,predicate=formchanger:sneak] run effect give @s jump_boost 1 2 true
        execute if entity @s[tag=EX_Doppel,predicate=formchanger:sneak] run effect give @s speed 1 4 true
