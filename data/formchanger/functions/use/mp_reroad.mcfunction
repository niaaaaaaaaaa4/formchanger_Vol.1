
# 魔法関連
    # MPがまだ残っているとき
        execute if entity @s[scores={M_cooldown=0}] as @s run function formchanger:use/mp
        execute if entity @s[scores={M_cooldown=..40}] run tag @s remove MAX_MP
        
    # 魔法のクールダウン
        execute if entity @s[scores={M_cooldown=1..},tag=!MAX_CHARGE] run particle smoke ~ ~1.2 ~ 0.1 0.1 0.1 0.03 2 force

        execute if entity @s[scores={M_cooldown=1..5},tag=!MAX_CHARGE] run title @s actionbar {"text": "- R----- -","color": "#f0fffd"}
        execute if entity @s[scores={M_cooldown=6..10},tag=!MAX_CHARGE] run title @s actionbar {"text": "- Re---- -","color": "#0f8fff"}
        execute if entity @s[scores={M_cooldown=11..15},tag=!MAX_CHARGE] run title @s actionbar {"text": "- Rec--- -","color": "#f0fffd"}
        execute if entity @s[scores={M_cooldown=16..20},tag=!MAX_CHARGE] run title @s actionbar {"text": "- Reca-- -","color": "#0f8fff"}
        execute if entity @s[scores={M_cooldown=21..25},tag=!MAX_CHARGE] run title @s actionbar {"text": "- Recas- -","color": "#f0fffd"}
        execute if entity @s[scores={M_cooldown=26..30},tag=!MAX_CHARGE] run title @s actionbar {"text": "- Recast -","color": "#0f8fff"}
    
    # MPがマイナスまで減った時、クールダウンを長く発生させ、MPを最大値まで回復させる
        execute if entity @s[scores={MP=..-1}] run scoreboard players set @s M_cooldown 100
        execute if entity @s[scores={MP=..-1}] run tag @s add MAX_MP
        execute if entity @s[scores={MP=..-1}] run tag @s add MAX_CHARGE

        execute if entity @s[scores={M_cooldown=40..}] run scoreboard players operation @s Recast_2 = @s M_cooldown
        execute if entity @s[scores={M_cooldown=40..}] run scoreboard players operation @s Recast_2 %= $Constant.value.3 Constant
    
        execute if entity @s[scores={M_cooldown=20..40},tag=MAX_CHARGE] run title @s actionbar [{"text": "--- ","color": "#0091ff"},{"text": "M","color": "#179aff"},{"text": "A","color": "#2ba3ff"},{"text": "X ","color": "#3dabff"},{"text": "C","color": "#5cb8ff"},{"text": "H","color": "#7dc7ff"},{"text": "A","color": "#98d0fa"},{"text": "R","color": "#abdaff"},{"text": "G","color": "#98d0fa"},{"text": "E","color": "#7dc7ff"},{"text": "D","color": "#5cb8ff"},{"text": "!","color": "#3dabff"},{"text": "!","color": "#2ba3ff"},{"text": "!","color": "#2ba3ff"},{"text": " ---","color": "#0091ff"}]
        execute if entity @s[scores={M_cooldown=20},tag=MAX_CHARGE] run scoreboard players set @s M_cooldown 0
        execute if entity @s[scores={M_cooldown=0},tag=MAX_CHARGE] run tag @s remove MAX_CHARGE

    # 効果（パーティクル＆サウンド）
        execute if entity @s[scores={Recast_2=0},tag=MAX_MP] run title @s actionbar {"text": "--- Recast ---","color": "#4d4646"}
        execute if entity @s[scores={Recast_2=1},tag=MAX_MP] run title @s actionbar {"text": "--- Recast ---","color": "#ab0011"}
        execute if entity @s[scores={Recast_2=2},tag=MAX_MP] run title @s actionbar {"text": "--- Recast ---","color": "#7a383b"}
            execute if entity @s[scores={Recast_2=0},tag=MAX_MP] run playsound entity.player.levelup player @s ~ ~ ~ 0.01 1.9
            execute if entity @s[scores={Recast_2=1},tag=MAX_MP] run playsound entity.player.levelup player @s ~ ~ ~ 0.01 0.5
            execute if entity @s[scores={Recast_2=2},tag=MAX_MP] run playsound entity.player.levelup player @s ~ ~ ~ 0.01 1.2 

        execute if entity @s[scores={M_cooldown=40},tag=MAX_CHARGE] run playsound entity.player.levelup player @s ~ ~ ~ 0.33 1