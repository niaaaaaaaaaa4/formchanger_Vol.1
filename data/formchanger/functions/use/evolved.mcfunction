
# クールダウン発生
    scoreboard players set @s EV_cooldown 100
    scoreboard players set @s CH_cooldown 100

    # 進化おめでとう！　おぬしにアイテムを授けよう！
        # エレクトツール--->エレクトチェンジャー
            execute if predicate formchanger:electtool_on_mainhand run loot spawn ~ ~ ~ loot formchanger:electtools/electchangers/electchangerbase
            execute if predicate formchanger:electtool_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

        # エレクトチェンジャー--->ボルトアクション 
            execute if predicate formchanger:electchanger_on_mainhand run loot spawn ~ ~ ~ loot formchanger:electtools/electchangers/boltactions/boltactionbace
            execute if predicate formchanger:electchanger_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

        # ボルトアクション--->Re：エレクトツール
            execute if predicate formchanger:boltaction_on_mainhand run loot spawn ~ ~ ~ loot formchanger:electtools/electchangers/boltactions/re_electtools/reelecttoolbace
            execute if predicate formchanger:boltaction_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

        # シュルカーズレプリカ--->シュルカーディスガイズ
            execute if predicate formchanger:shulkers_replica/shulkers_replica_on_mainhand run loot spawn ~ ~ ~ loot formchanger:shulkers_replicas/shulker_disguises/shulker_disguisebase
            execute if predicate formchanger:shulkers_replica/shulkers_replica_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

        # シュルカーディスガイズ--->シュルカーズコピー
            execute if predicate formchanger:shulkers_replica/shulkers_disguise_on_mainhand run loot spawn ~ ~ ~ loot formchanger:shulkers_replicas/shulker_disguises/shulkers_copys/shulkers_copybase
            execute if predicate formchanger:shulkers_replica/shulkers_disguise_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
            
        # シュルカーズコピー--->パーフェクトマッチ
            execute if predicate formchanger:shulkers_replica/shulkers_copy_on_mainhand run loot spawn ~ ~ ~ loot formchanger:shulkers_replicas/shulker_disguises/shulkers_copys/perfectmatches/perfectmatchbase
            execute if predicate formchanger:shulkers_replica/shulkers_copy_on_mainhand run item replace entity @s weapon.mainhand with air
            data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

        # バッテリー関連
            # ノーマルバッテリー-->セカンドバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade1,predicate=!formchanger:several/y_under_0] SelectedItem.tag.Status{ID:Normal_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/2nd_battery/b_second_battery
            
            # ノーマルバッテリー-->ビックバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade1,predicate=formchanger:several/y_under_0] SelectedItem.tag.Status{ID:Normal_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/2nd_battery/b_big_battery
           
            # セカンドバッテリー-->ツインバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade2,predicate=!formchanger:several/redstoneblock_in_hotber] SelectedItem.tag.Status{ID:Second_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/3rd_battery/b_twin_battery
            
            # セカンドバッテリー-->スムーズバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade2,predicate=formchanger:several/redstoneblock_in_hotber] SelectedItem.tag.Status{ID:Second_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/3rd_battery/b_smooth_battery
           
            # ビッグバッテリー-->ツインバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade2,predicate=!formchanger:several/pick_redstone1555] SelectedItem.tag.Status{ID:Big_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/3rd_battery/b_twin_battery
            
            # ビッグバッテリー-->エナジータンク
                execute if data entity @s[predicate=formchanger:goods/kit_grade2,predicate=formchanger:several/pick_redstone1555] SelectedItem.tag.Status{ID:Big_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/3rd_battery/b_energy_tank
            
            # スムーズバッテリー-->ベアリングアダプター
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=!formchanger:several/do_effect/do_speed,predicate=formchanger:several/do_effect/do_jump_boost] SelectedItem.tag.Status{ID:Smooth_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/4th_battery/b_pairing_adapter
            
            # スムーズバッテリー-->サンダーユーザー
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/do_effect/do_speed,predicate=!formchanger:several/do_effect/do_jump_boost] SelectedItem.tag.Status{ID:Smooth_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/4th_battery/b_thunder_user
            
            # スムーズバッテリー-->ピュアバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/do_effect/do_speed,predicate=formchanger:several/do_effect/do_jump_boost] SelectedItem.tag.Status{ID:Smooth_battery} run tag @s add Enlight
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/do_effect/do_speed,predicate=formchanger:several/do_effect/do_jump_boost] SelectedItem.tag.Status{ID:Smooth_battery} run function formchanger:use/enlighted
            
            # エナジータンク-->サンダーユーザー
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_now/at_end_city] SelectedItem.tag.Status{ID:Energy_tank} run loot replace entity @s weapon.mainhand loot formchanger:batterys/4th_battery/b_thunder_user
            
            # エナジータンク-->クリティカルヒッター
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_now/at_fortress] SelectedItem.tag.Status{ID:Energy_tank} run loot replace entity @s weapon.mainhand loot formchanger:batterys/4th_battery/b_critical_hiter
            
            # エナジータンク-->セーブバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_now/at_ancient_city] SelectedItem.tag.Status{ID:Energy_tank} run tag @s add Enlight
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_now/at_ancient_city] SelectedItem.tag.Status{ID:Energy_tank} run function formchanger:use/enlighted
           
            # ツインバッテリー-->クリティカルヒッター
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_xyz/y_0] SelectedItem.tag.Status{ID:Twin_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/4th_battery/b_critical_hiter
            
            # ツインバッテリー-->テトラバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_xyz/y_under56] SelectedItem.tag.Status{ID:Twin_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/4th_battery/b_tetra_battery
            
            # ツインバッテリー-->グロウバッテリー
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_xyz/y_below300] SelectedItem.tag.Status{ID:Twin_battery} run tag @s add Enlight
                execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_xyz/y_below300] SelectedItem.tag.Status{ID:Twin_battery} run function formchanger:use/enlighted
            
            # クリティカルヒッター-->ハッピーアワー
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/beat_wither_skull,predicate=!formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Critical_hiter} run loot replace entity @s weapon.mainhand loot formchanger:batterys/final/b_happy_hour
            
            # クリティカルヒッター-->ドッペルゲンガー
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/beat_wither_skull,predicate=formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Critical_hiter} run tag @s add Enlight
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/beat_wither_skull,predicate=formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Critical_hiter} run function formchanger:use/enlighted
            
            # ベアリングアダプター-->モーメントドライバー
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/run_swim_fly,predicate=!formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Pairing_adapter} run loot replace entity @s weapon.mainhand loot formchanger:batterys/final/b_moment_driver
            
            # ベアリングアダプター-->エアアーツ
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/run_swim_fly,predicate=formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Pairing_adapter} run tag @s add Enlight
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/run_swim_fly,predicate=formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Pairing_adapter} run function formchanger:use/enlighted

            # テトラバッテリー-->デュオデシマル
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/do_effect/do_good_effectall,predicate=!formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Tetra_battery} run loot replace entity @s weapon.mainhand loot formchanger:batterys/final/b_duodecimal_battery
            
            # テトラバッテリー-->プリズムバラージュ
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/do_effect/do_good_effectall,predicate=formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Tetra_battery} run tag @s add Enlight
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/do_effect/do_good_effectall,predicate=formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Tetra_battery} run function formchanger:use/enlighted

            # サンダーユーザー-->アンカー
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,scores={Thunder_count=33355..},predicate=!formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Thunder_user} run loot replace entity @s weapon.mainhand loot formchanger:batterys/final/b_the_anker
            
            # サンダーユーザー-->サンダーボルト
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,scores={Thunder_count=33355..},predicate=formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Thunder_user} run tag @s add Enlight
                execute if data entity @s[predicate=formchanger:goods/kit_grade4,scores={Thunder_count=33355..},predicate=formchanger:several/nether_star_in_hotber] SelectedItem.tag.Status{ID:Thunder_user} run function formchanger:use/enlighted
       
# テキスト表示
    execute if entity @s[tag=!Enlight] run tellraw @s {"text":"------------------- 進化が完了した！！ ------------------","color": "#00d5ff"}

    execute if entity @s[tag=!Enlight] run title @s actionbar {"text": "======== evolved!!!!!!!!!!!!! ========","color": "#00d5ff"}

# サウンド＆パーティクル発生
    execute if entity @s[tag=!Enlight] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 2 1.5
    execute if entity @s[tag=!Enlight] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 0.8

    execute if entity @s[tag=!Enlight] run particle crit ~ ~1 ~ 0.2 0.2 0.2 0.23 150 normal @s

# 初期化
    execute if entity @s[tag=!Enlight] run loot replace entity @s weapon.offhand loot formchanger:goods/upgrade_kit

# 経験値減少
    execute if entity @s[tag=!Enlight] run experience add @s -10 levels

tag @s add Not_Display
tag @s remove Enlight