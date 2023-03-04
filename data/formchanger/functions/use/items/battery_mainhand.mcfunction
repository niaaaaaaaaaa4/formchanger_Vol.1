
# バッテリーの進化関連
# ノーマルバッテリー
    # 進化分岐を表示
        execute if data entity @s[predicate=!formchanger:goods/kit_grade1,scores={CH_cooldown=0}] SelectedItem.tag.Status{ID:Normal_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}]

    # y座標がゼロ以下かどうか
        execute if data entity @s[predicate=formchanger:goods/kit_grade1,predicate=!formchanger:several/y_under_0,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Normal_battery} run title @s actionbar [{"text": "- evolve? -","color": "#ff0004"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}]
        execute if data entity @s[predicate=formchanger:goods/kit_grade1,predicate=formchanger:several/y_under_0,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Normal_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- evolve? -","color": "#001aff"}]
      
        execute if data entity @s[predicate=formchanger:goods/kit_grade1,predicate=formchanger:sneak] SelectedItem.tag.Status{ID:Normal_battery} run function formchanger:use/evolved
    
# セカンドバッテリー
    # 進化分岐を表示
        execute if data entity @s[predicate=!formchanger:goods/kit_grade2,scores={CH_cooldown=0}] SelectedItem.tag.Status{ID:Second_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}]

    # レッドストーンを持っているかどうか
        execute if data entity @s[predicate=formchanger:goods/kit_grade2,predicate=!formchanger:several/redstoneblock_in_hotber,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Second_battery} run title @s actionbar [{"text": "- evolve? -","color": "#ff0004"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade2,predicate=formchanger:several/redstoneblock_in_hotber,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Second_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- evolve? -","color": "#09ff00"}]
        
        execute if data entity @s[predicate=formchanger:goods/kit_grade2,predicate=formchanger:sneak] SelectedItem.tag.Status{ID:Second_battery} run function formchanger:use/evolved
    
# ビッグバッテリー
    # 進化分岐を表示
        execute if data entity @s[predicate=!formchanger:goods/kit_grade2,scores={CH_cooldown=0}] SelectedItem.tag.Status{ID:Big_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}]

    # レッドストーンを１５５５以上拾ったか
        execute if data entity @s[predicate=formchanger:goods/kit_grade2,predicate=!formchanger:several/pick_redstone1555,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Big_battery} run title @s actionbar [{"text": "- evolve? -","color": "#09ff00"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade2,predicate=formchanger:several/pick_redstone1555,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Big_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- evolve? -","color": "#001aff"}]
        
        execute if data entity @s[predicate=formchanger:goods/kit_grade2,predicate=formchanger:sneak] SelectedItem.tag.Status{ID:Big_battery} run function formchanger:use/evolved

# スムーズバッテリー
    # 進化分岐を表示
        execute if data entity @s[predicate=!formchanger:goods/kit_grade3,scores={CH_cooldown=0}] SelectedItem.tag.Status{ID:Smooth_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}]

    # 移動速度上昇がかかっているかどうか、跳躍力上昇も同時にかかっていると開化
    # ヒントをあげよう
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=!formchanger:several/do_effect/do_speed,predicate=!formchanger:several/do_effect/do_jump_boost,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Smooth_battery} run title @s actionbar [{"text": "- tip. -     ","color": "gray"},{"text": "- potion_effects -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=!formchanger:several/do_effect/do_speed,predicate=formchanger:several/do_effect/do_jump_boost,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Smooth_battery} run title @s actionbar [{"text": "- evolve? -","color": "#ff0004"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/do_effect/do_speed,predicate=!formchanger:several/do_effect/do_jump_boost,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Smooth_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- evolve? -","color": "#f6ff00"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}]
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/do_effect/do_speed,predicate=formchanger:several/do_effect/do_jump_boost,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Smooth_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- enlight? -","color": "#ff00ea"}]
        
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/do_effect/do_speed,predicate=formchanger:sneak] SelectedItem.tag.Status{ID:Smooth_battery} run function formchanger:use/evolved
    
# エナジータンク
    # 進化分岐を表示
        execute if data entity @s[predicate=!formchanger:goods/kit_grade3,scores={CH_cooldown=0}] SelectedItem.tag.Status{ID:Energy_tank} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}]

    # どの場所にいるか、ディープダークだと開化
    # ヒントをあげよう
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=!formchanger:several/at_now/at_3,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Energy_tank} run title @s actionbar [{"text": "- tip. -     ","color": "gray"},{"text": "- in structures -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_now/at_end_city,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Energy_tank} run title @s actionbar [{"text": "- evolve? -","color": "#f6ff00"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_now/at_fortress,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Energy_tank} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- evolve? -","color": "#ff9d00"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}]
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_now/at_ancient_city,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Energy_tank} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- enlight? -","color": "#ff00ea"}]
        
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_now/at_3,predicate=formchanger:sneak] SelectedItem.tag.Status{ID:Energy_tank} run function formchanger:use/evolved
    
# ツインバッテリー
    # 進化分岐を表示
        execute if data entity @s[predicate=!formchanger:goods/kit_grade3,scores={CH_cooldown=0}] SelectedItem.tag.Status{ID:Twin_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}]

    # 座標がどこか、300ブロック以上上にいるなら開化
    # ヒントをあげよう
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=!formchanger:several/at_xyz/y_0,predicate=!formchanger:several/at_xyz/y_below300,predicate=!formchanger:several/at_xyz/y_under56,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Twin_battery} run title @s actionbar [{"text": "- tip. -     ","color": "gray"},{"text": "- Y location -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_xyz/y_0,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Twin_battery} run title @s actionbar [{"text": "- evolve? -","color": "#ff9d00"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_xyz/y_under56,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Twin_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- evolve? -","color": "#0000ff"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"}]
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_xyz/y_below300,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Twin_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- enlight? -","color": "#ff00ea"}]
        
        execute if data entity @s[predicate=formchanger:goods/kit_grade3,predicate=formchanger:several/at_xyz/y_3s,predicate=formchanger:sneak] SelectedItem.tag.Status{ID:Twin_battery} run function formchanger:use/evolved

# クリティカルヒッター
    # 進化表示
        execute if data entity @s[predicate=!formchanger:goods/kit_grade4,scores={CH_cooldown=0}] SelectedItem.tag.Status{ID:Critical_hiter} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "          ","color": "gray"},{"text": "- □ -","color": "gray"}]

    # ウィザースケルトンをたくさん倒していると解放、さらにネザースターがホットバーに入っていると変更
    # ヒントをあげよう
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=!formchanger:several/beat_wither_skull,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Critical_hiter} run title @s actionbar [{"text": "- tip. -     ","color": "gray"},{"text": "- beat blackhead in Nether -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/beat_wither_skull,predicate=!formchanger:several/nether_star_in_hotber,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Critical_hiter} run title @s actionbar [{"text": "- evolve? -","color": "#00c0fa"},{"text": "     ","color": "gray"},{"text": "- [ netherstar in hotbar...? ] -","color": "#f090e8"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/beat_wither_skull,predicate=formchanger:several/nether_star_in_hotber,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Critical_hiter} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- enlight? -","color": "#ff00ea"}] 
        
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/beat_wither_skull,predicate=formchanger:sneak] SelectedItem.tag.Status{ID:Critical_hiter} run function formchanger:use/evolved
    
# ベアリングアダプター
    # 進化表示
        execute if data entity @s[predicate=!formchanger:goods/kit_grade4,scores={CH_cooldown=0}] SelectedItem.tag.Status{ID:Pairing_adapter} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "          ","color": "gray"},{"text": "- □ -","color": "gray"}]

    # 走った距離及び泳いだ距離及びとんだ距離がすべて5㌔を超えたら解放、さらにネザースターがホットバーに入っていると変更
    # ヒントをあげよう
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=!formchanger:several/run_swim_fly,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Pairing_adapter} run title @s actionbar [{"text": "- tip. -     ","color": "gray"},{"text": "- run, swim, and fly so hard! -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/run_swim_fly,predicate=!formchanger:several/nether_star_in_hotber,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Pairing_adapter} run title @s actionbar [{"text": "- evolve? -","color": "#00c0fa"},{"text": "     ","color": "gray"},{"text": "- [ netherstar in hotbar...? ] -","color": "#f090e8"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/run_swim_fly,predicate=formchanger:several/nether_star_in_hotber,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Pairing_adapter} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- enlight? -","color": "#ff00ea"}] 
        
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/run_swim_fly,predicate=formchanger:sneak] SelectedItem.tag.Status{ID:Pairing_adapter} run function formchanger:use/evolved
    
# テトラバッテリー
    # 進化表示
        execute if data entity @s[predicate=!formchanger:goods/kit_grade4,scores={CH_cooldown=0}] SelectedItem.tag.Status{ID:Tetra_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "          ","color": "gray"},{"text": "- □ -","color": "gray"}]

    # 俊敏、跳躍、攻撃力上昇、再生、暗視、水中呼吸、火炎耐性、透明、幸運、低速落下が同時に付与されていれば解放、さらにネザースターがホットバーに入っていると変更
    # ヒントをあげよう
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=!formchanger:several/do_effect/do_good_effectall,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Tetra_battery} run title @s actionbar [{"text": "- tip. -     ","color": "gray"},{"text": "- ultimate self-enhancement -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/do_effect/do_good_effectall,predicate=!formchanger:several/nether_star_in_hotber,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Tetra_battery} run title @s actionbar [{"text": "- evolve? -","color": "#00c0fa"},{"text": "     ","color": "gray"},{"text": "- [ netherstar in hotbar...? ] -","color": "#f090e8"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/do_effect/do_good_effectall,predicate=formchanger:several/nether_star_in_hotber,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Tetra_battery} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- enlight? -","color": "#ff00ea"}] 
        
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,predicate=formchanger:several/do_effect/do_good_effectall,predicate=formchanger:sneak] SelectedItem.tag.Status{ID:Tetra_battery} run function formchanger:use/evolved
    
# サンダーユーザー
    # 進化表示
        execute if data entity @s[predicate=!formchanger:goods/kit_grade4,scores={CH_cooldown=0}] SelectedItem.tag.Status{ID:Thunder_user} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "          ","color": "gray"},{"text": "- □ -","color": "gray"}]

    # 雷雨を長時間過ごすと解放、さらにネザースターがホットバーに入っていると変更
    # ヒントをあげよう
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,scores={Thunder_count=..33355},predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Thunder_user} run title @s actionbar [{"text": "- tip. -     ","color": "gray"},{"text": "- you are loved by thunderstorm -","color": "gray"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,scores={Thunder_count=33355..},predicate=!formchanger:several/nether_star_in_hotber,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Thunder_user} run title @s actionbar [{"text": "- evolve? -","color": "#00c0fa"},{"text": "     ","color": "gray"},{"text": "- [ netherstar in hotbar...? ] -","color": "#f090e8"}] 
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,scores={Thunder_count=33355..},predicate=formchanger:several/nether_star_in_hotber,predicate=!formchanger:sneak] SelectedItem.tag.Status{ID:Thunder_user} run title @s actionbar [{"text": "- □ -","color": "gray"},{"text": "     ","color": "gray"},{"text": "- enlight? -","color": "#ff00ea"}] 
        
        execute if data entity @s[predicate=formchanger:goods/kit_grade4,scores={Thunder_count=33355..},predicate=formchanger:sneak] SelectedItem.tag.Status{ID:Thunder_user} run function formchanger:use/evolved
    