# アイテムを授けよう！
    execute at @s run loot spawn ~ ~ ~ loot formchanger:goods/upgrade_kit
    data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s formchanger:goods/m_upgrade_kit

# チェストを用いたからね
    clear @s chest 1

# 進捗は次の時のために削除
    advancement revoke @s only formchanger:craft/goods/c_upgrade_kit