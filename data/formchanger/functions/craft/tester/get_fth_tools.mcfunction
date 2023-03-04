# アイテムを授けよう！
    execute at @s run loot spawn ~ ~ ~ loot formchanger:electtools/electchangers/boltactions/re_electtools/reelecttoolbace
    execute at @s run loot spawn ~ ~ ~ loot formchanger:electtools/electchangers/telewaves/teleanleasers/teleanleaserbase
    execute at @s run loot spawn ~ ~ ~ loot formchanger:shulkers_replicas/levitaters/floweffecters/airartses/airartsbase
    execute at @s run loot spawn ~ ~ ~ loot formchanger:shulkers_replicas/shulker_disguises/shulkers_copys/perfectmatches/perfectmatchbase

    data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
