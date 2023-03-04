
# クールダウン発生
    scoreboard players set @s EV_cooldown 100
    scoreboard players set @s CH_cooldown 100

# テキスト表示
    execute at @s run tellraw @s {"text":"------------------- 開化が完了した！！ ------------------","color": "#ff00ea"}

    execute at @s run title @s actionbar {"text": "======== enlighted!!!!!!!!!!!!! ========","color": "#ff00ea"}
    # 開化おめでとう！　おぬしにアイテムを授けよう！
        # エレクトチェンジャー--->テレウェーブ 
            execute if predicate formchanger:electchanger_on_mainhand run loot spawn ~ ~ ~ loot formchanger:electtools/electchangers/telewaves/telewavebace
            execute if predicate formchanger:electchanger_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

        # テレウェーブ--->テレアンリーサー
            execute if predicate formchanger:telewave_on_mainhand run loot spawn ~ ~ ~ loot formchanger:electtools/electchangers/telewaves/teleanleasers/teleanleaserbase
            execute if predicate formchanger:telewave_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

        # シュルカーズレプリカ--->レピテター
            execute if predicate formchanger:shulkers_replica/shulkers_replica_on_mainhand run loot spawn ~ ~ ~ loot formchanger:shulkers_replicas/levitaters/levitaterbase
            execute if predicate formchanger:shulkers_replica/shulkers_replica_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

        # レピテター--->フローエフェクター
            execute if predicate formchanger:shulkers_replica/levitater_on_mainhand run loot spawn ~ ~ ~ loot formchanger:shulkers_replicas/levitaters/floweffecters/floweffecterbase
            execute if predicate formchanger:shulkers_replica/levitater_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
            
        # フローエフェクター--->エアアーツ
            execute if predicate formchanger:shulkers_replica/floweffecter_on_mainhand run loot spawn ~ ~ ~ loot formchanger:shulkers_replicas/levitaters/floweffecters/airartses/airartsbase
            execute if predicate formchanger:shulkers_replica/floweffecter_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

        # バッテリー関連
            # スムーズバッテリー-->ピュアバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/do_effect/do_speed,predicate=formchanger:several/do_effect/do_jump_boost] SelectedItem.tag.Status{ID:Smooth_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/ex_battery/b_pure_battery
            
            # エナジータンク-->セーブバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_now/at_ancient_city] SelectedItem.tag.Status{ID:Energy_tank} run loot replace entity @s weapon.mainhand loot formchanger:batterys/ex_battery/b_save_battery

            # ツインバッテリー-->グロウバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_xyz/y_below300] SelectedItem.tag.Status{ID:Twin_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/ex_battery/b_grow_battery

            # クリティカルヒッター-->ドッペルゲンガー
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/beat_wither_skull] SelectedItem.tag.Status{ID:Critical_hiter} run loot replace entity @s weapon.mainhand loot formchanger:batterys/final/b_doppel_ganger

            # ベアリングアダプター-->サイクロン
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/run_swim_fly] SelectedItem.tag.Status{ID:Pairing_adapter} run loot replace entity @s weapon.mainhand loot formchanger:batterys/final/b_cyclone

            # テトラバッテリー-->プリズムバラージュ
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/do_effect/do_good_effectall] SelectedItem.tag.Status{ID:Tetra_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/final/b_prizm_barrage

            # サンダーユーザー-->サンダーボルト
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,scores={Thunder_count=33355..}] SelectedItem.tag.Status{ID:Thunder_user} run loot replace entity @s weapon.mainhand loot formchanger:batterys/final/b_thunder_bolt

# サウンド＆パーティクル発生
    playsound entity.enderman.teleport player @s ~ ~ ~ 2 1.5
    playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 0.8

    particle dragon_breath ~ ~1 ~ 0.3 0.3 0.3 2 120 normal @s
    particle dragon_breath ~ ~1 ~ 0.3 0.3 0.3 0.5 120 normal @s

# 初期化
    loot replace entity @s weapon.offhand loot formchanger:goods/upgrade_kit

tag @s add Not_Display
