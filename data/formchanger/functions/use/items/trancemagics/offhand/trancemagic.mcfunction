
# オフハンドに入っているときは魔法詠唱モードに
    # スニーク中進度を教えてくれるよ
        function formchanger:use/mp_reroad
        
    # 特殊効果発生
        # 魔法のエフェクト
            execute if entity @s[predicate=!formchanger:sneak] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 1 normal @s
    
        # マジックバレットの実行
            execute if entity @s[predicate=formchanger:sneak,scores={M_cooldown=0}] run function formchanger:use/magics/magicammo/magicammo

