# アイテムを授けよう！
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/4th_battery/b_critical_hiter
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/4th_battery/b_pairing_adapter
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/4th_battery/b_tetra_battery
    execute at @s run loot spawn ~ ~ ~ loot formchanger:batterys/4th_battery/b_thunder_user

    data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
