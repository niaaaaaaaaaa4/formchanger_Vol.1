# アイテムを授けよう！
    execute at @s run loot spawn ~ ~ ~ loot formchanger:shulkers_replicas/shulkers_replicabase
    data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s formchanger:mshulkers_replica

# チェストを用いたからね
    clear @s chest 1

# 進捗は次の時のために削除
    advancement revoke @s only formchanger:craft/cshulkers_replica