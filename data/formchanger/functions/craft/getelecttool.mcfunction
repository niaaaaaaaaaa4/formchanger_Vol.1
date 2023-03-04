# アイテムを授けよう！
    execute at @s run loot spawn ~ ~ ~ loot formchanger:electtools/electbase
    data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s formchanger:melecttool

# チェストを用いたからね
    clear @s chest 1

# 進捗は次の時のために削除
    advancement revoke @s only formchanger:craft/celecttool