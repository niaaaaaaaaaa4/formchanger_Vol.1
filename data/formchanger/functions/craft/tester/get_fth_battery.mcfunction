# アイテムを授けよう！
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/final/b_cyclone
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/final/b_doppel_ganger
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/final/b_duodecimal_battery
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/final/b_happy_hour
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/final/b_moment_driver
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/final/b_prizm_barrage
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/final/b_the_anker
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/final/b_thunder_bolt

    data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
