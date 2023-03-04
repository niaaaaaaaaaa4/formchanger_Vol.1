
# バッテリーの補正はここで！
    execute if predicate formchanger:battery_on_offhand run function formchanger:use/next/what
    execute if predicate formchanger:battery_on_offhand run tag @s add Re_set

# バッテリーごとの変形速度
    execute if predicate formchanger:batterys/2nd_battery/second_battery_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.1 Constant
    execute if predicate formchanger:batterys/2nd_battery/second_battery_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.1 Constant
    execute if predicate formchanger:batterys/3rd_battery/twin_battery_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.1 Constant
    execute if predicate formchanger:batterys/3rd_battery/twin_battery_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.1 Constant
    execute if predicate formchanger:batterys/4th_battery/tetra_battery_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.1 Constant
    execute if predicate formchanger:batterys/4th_battery/tetra_battery_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.1 Constant

    execute if predicate formchanger:batterys/f_battery/cyclone_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.3 Constant
    execute if predicate formchanger:batterys/f_battery/cyclone_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.3 Constant
    execute if predicate formchanger:batterys/3rd_battery/smooth_battery_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.3 Constant
    execute if predicate formchanger:batterys/3rd_battery/smooth_battery_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.3 Constant
    execute if predicate formchanger:batterys/f_battery/prismbarrage_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.3 Constant
    execute if predicate formchanger:batterys/f_battery/prismbarrage_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.3 Constant
    execute if predicate formchanger:batterys/f_battery/duodecimal_battery_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.3 Constant
    execute if predicate formchanger:batterys/f_battery/duodecimal_battery_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.3 Constant
    execute if predicate formchanger:batterys/f_battery/the_anker_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.3 Constant
    execute if predicate formchanger:batterys/f_battery/the_anker_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.3 Constant
    
    execute if predicate formchanger:batterys/f_battery/doppelganger_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.5 Constant
    execute if predicate formchanger:batterys/f_battery/doppelganger_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.5 Constant
    execute if predicate formchanger:batterys/4th_battery/pairing_adapter_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.5 Constant
    execute if predicate formchanger:batterys/4th_battery/pairing_adapter_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.5 Constant

    execute if predicate formchanger:batterys/f_battery/moment_driver_on_offhand run scoreboard players operation @s Nia_Sneaktime += $Constant.value.15 Constant
    execute if predicate formchanger:batterys/f_battery/moment_driver_on_offhand run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.15 Constant

# バッテリーごとの効果付与
    execute if predicate formchanger:batterys/2nd_battery/big_battery_on_offhand run effect give @s haste 1 0
    execute if predicate formchanger:batterys/3rd_battery/twin_battery_on_offhand run effect give @s haste 1 0
    execute if predicate formchanger:batterys/4th_battery/tetra_battery_on_offhand run effect give @s haste 1 0
    execute if predicate formchanger:batterys/3rd_battery/energy_tank_on_offhand run effect give @s haste 1 1
    execute if predicate formchanger:batterys/f_battery/prismbarrage_on_offhand run effect give @s haste 1 1
    execute if predicate formchanger:batterys/f_battery/thunderbolt_on_offhand run effect give @s haste 1 1
    execute if predicate formchanger:batterys/f_battery/duodecimal_battery_on_offhand run effect give @s haste 1 1
    execute if predicate formchanger:batterys/4th_battery/thunder_user_on_offhand run effect give @s haste 1 2
    execute if predicate formchanger:batterys/f_battery/the_anker_on_offhand run effect give @s haste 1 3

    execute if predicate formchanger:batterys/4th_battery/tetra_battery_on_offhand run effect give @s speed 1 0
    execute if predicate formchanger:batterys/f_battery/duodecimal_battery_on_offhand run effect give @s speed 1 1
    execute if predicate formchanger:batterys/f_battery/moment_driver_on_offhand run effect give @s speed 1 1
    execute if predicate formchanger:batterys/f_battery/thunderbolt_on_offhand run effect give @s speed 1 2

    execute if predicate formchanger:batterys/4th_battery/tetra_battery_on_offhand run effect give @s jump_boost 1 0
    execute if predicate formchanger:batterys/f_battery/moment_driver_on_offhand run effect give @s jump_boost 1 0
    execute if predicate formchanger:batterys/f_battery/duodecimal_battery_on_offhand run effect give @s jump_boost 1 1

    execute if predicate formchanger:batterys/f_battery/duodecimal_battery_on_offhand run effect give @s slow_falling 1 1

    execute if predicate formchanger:batterys/f_battery/duodecimal_battery_on_offhand run effect give @s resistance 1 1

    execute if predicate formchanger:batterys/4th_battery/critical_hiter_on_offhand run effect give @s luck 1 0

    execute if predicate formchanger:batterys/f_battery/prismbarrage_on_offhand run effect give @s glowing 1 1

    execute if predicate formchanger:batterys/f_battery/doppelganger_on_offhand run effect give @s night_vision 1 2

# 特殊エンチャ
    execute if predicate formchanger:batterys/ex_battery/pure_battery_on_offhand run enchant @s silk_touch 1
    execute if predicate formchanger:batterys/4th_battery/critical_hiter_on_offhand run enchant @s fortune 1
    execute if predicate formchanger:batterys/f_battery/happy_hour_on_offhand run enchant @s fortune 2
    execute if predicate formchanger:batterys/ex_battery/pure_battery_on_offhand run tag @s add Pure_re
    execute if predicate formchanger:batterys/4th_battery/critical_hiter_on_offhand run tag @s add Crit_re
    execute if predicate formchanger:batterys/f_battery/happy_hour_on_offhand run tag @s add Happ_re

    execute if predicate formchanger:batterys/ex_battery/save_battery_on_offhand run tag @s add Save_re

# グロウバッテリーの特殊効果関連
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=0..}] run scoreboard players operation @s Nia_Sneaktime += $Constant.value.1 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=0..}] run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.1 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=100..}] run scoreboard players operation @s Nia_Sneaktime += $Constant.value.3 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=100..}] run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.3 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=500..}] run scoreboard players operation @s Nia_Sneaktime += $Constant.value.5 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=500..}] run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.5 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=1000..}] run scoreboard players operation @s Nia_Sneaktime += $Constant.value.10 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=1000..}] run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.10 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=2500..}] run scoreboard players operation @s Nia_Sneaktime += $Constant.value.15 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=2500..}] run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.15 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=5000..}] run scoreboard players operation @s Nia_Sneaktime += $Constant.value.30 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=5000..}] run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.30 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=7500..}] run scoreboard players operation @s Nia_Sneaktime += $Constant.value.50 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=7500..}] run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.50 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=9999..}] run scoreboard players operation @s Nia_Sneaktime += $Constant.value.100 Constant
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=9999..}] run scoreboard players operation @s Nia_Sneaktotaltime += $Constant.value.100 Constant

    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=50..1500}] run effect give @s haste 1 0
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=150..2000}] run effect give @s jump_boost 1 0
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=300..2000}] run effect give @s speed 1 0
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=500..}] run effect give @s slow_falling 1 0
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=1000..}] run effect give @s regeneration 1 0
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=1500..5000}] run effect give @s haste 1 1
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=2000..6500}] run effect give @s speed 1 1
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=2000..6500}] run effect give @s jump_boost 1 1
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=2500..}] run effect give @s night_vision 1 0
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=5000..9999}] run enchant @s fortune 1
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=5000..9999}] run effect give @s haste 1 2
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=6500..}] run effect give @s jump_boost 1 2
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=6500..}] run effect give @s speed 1 2
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=9999..}] run enchant @s fortune 2
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand,scores={Grow_count=9999..}] run effect give @s haste 1 4
    
    execute if predicate formchanger:batterys/ex_battery/grow_battery_on_offhand run tag @s add Grow_re

# リセットが必要ならここでも
    execute if entity @s[predicate=!formchanger:batterys/ex_battery/grow_battery_on_offhand,tag=Grow_re] run function formchanger:use/change/reset
    execute if entity @s[predicate=!formchanger:batterys/ex_battery/pure_battery_on_offhand,tag=Pure_re] run function formchanger:use/change/reset
    execute if entity @s[predicate=!formchanger:batterys/4th_battery/critical_hiter_on_offhand,tag=Crit_re] run function formchanger:use/change/reset
    execute if entity @s[predicate=!formchanger:batterys/f_battery/happy_hour_on_offhand,tag=Happ_re] run function formchanger:use/change/reset
    execute if entity @s[predicate=!formchanger:batterys/ex_battery/save_battery_on_offhand,tag=Save_re] run function formchanger:use/change/reset
