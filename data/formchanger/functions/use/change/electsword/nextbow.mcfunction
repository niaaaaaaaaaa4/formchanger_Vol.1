# アイテムの交換が先決
    item replace entity @s weapon.mainhand with air
    loot spawn ~ ~ ~ loot formchanger:electswords/electbow
    data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

# サウンドやらエフェクトを発生！
    playsound block.iron_trapdoor.close player @s ~ ~ ~ 1.2 1.1
    playsound block.iron_trapdoor.open player @s ~ ~ ~ 0.5

    particle sonic_boom ~ ~1 ~