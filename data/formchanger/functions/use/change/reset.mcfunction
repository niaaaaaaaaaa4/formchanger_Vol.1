
# 強化条件加算　＜変化させた回数＞
    execute if entity @s[predicate=formchanger:batterys/ex_battery/grow_battery_on_offhand] run scoreboard players add @s Grow_count 15
    scoreboard players add @s Grow_count 5

# アイテムの交換
    # エレクトツール関連
        execute if predicate formchanger:electtool_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:electtools/electbase
        execute if predicate formchanger:electchanger_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:electtools/electchangers/electchangerbase
        execute if predicate formchanger:boltaction_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:electtools/electchangers/boltactions/boltactionbace
        execute if predicate formchanger:telewave_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:electtools/electchangers/telewaves/telewavebace
        execute if predicate formchanger:re_electchanger_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:electtools/electchangers/boltactions/re_electtools/reelecttoolbace
        execute if predicate formchanger:teleanleaser_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:electtools/electchangers/telewaves/teleanleasers/teleanleaserbase

    # シュルカーズレプリカ関連
        execute if predicate formchanger:shulkers_replica/shulkers_replica_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:shulkers_replicas/shulkers_replicabase
        execute if predicate formchanger:shulkers_replica/shulkers_disguise_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:shulkers_replicas/shulker_disguises/shulker_disguisebase
        execute if predicate formchanger:shulkers_replica/levitater_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:shulkers_replicas/levitaters/levitaterbase
        execute if predicate formchanger:shulkers_replica/shulkers_copy_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:shulkers_replicas/shulker_disguises/shulkers_copys/shulkers_copybase
        execute if predicate formchanger:shulkers_replica/floweffecter_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:shulkers_replicas/levitaters/floweffecters/floweffecterbase
        execute if predicate formchanger:shulkers_replica/perfectmatch_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:shulkers_replicas/shulker_disguises/shulkers_copys/perfectmatches/perfectmatchbase
        execute if predicate formchanger:shulkers_replica/airarts_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:shulkers_replicas/levitaters/floweffecters/airartses/airartsbase

    # トランスマジック関連
        #execute if predicate formchanger:trancemagic/mainhand/trancemagic_on_mainhand run loot replace entity @s weapon.mainhand loot formchanger:trancemagics/trancemagicbase
 
# サウンドやらエフェクトを発生！
    playsound block.iron_trapdoor.close player @s ~ ~ ~ 1.2 1.1
    playsound block.iron_trapdoor.open player @s ~ ~ ~ 0.5 

    execute at @s run particle large_smoke ~ ~1 ~ 

    title @s actionbar {"text": "- Reset... -","color": "gray"}
    scoreboard players set @s CH_cooldown 60

# マジックトランスならリセット
    scoreboard players reset @s Nia_M_Sneaktime

# タグリセット
    tag @s[predicate=!formchanger:batterys/ex_battery/pure_battery_on_offhand] remove Grow_re
    tag @s[predicate=!formchanger:batterys/4th_battery/critical_hiter_on_offhand] remove Crit_re
    tag @s[predicate=!formchanger:batterys/f_battery/happy_hour_on_offhand] remove Happ_re
    tag @s[predicate=!formchanger:batterys/ex_battery/pure_battery_on_offhand] remove Pure_re
    tag @s[predicate=!formchanger:batterys/ex_battery/save_battery_on_offhand] remove Save_re
    tag @s remove Re_set
