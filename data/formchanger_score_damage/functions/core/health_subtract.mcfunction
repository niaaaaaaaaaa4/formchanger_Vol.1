#> formchanger_score_damage:core/health_subtract
#
# MobのHealthを減算する
#
# @within function formchanger_score_damage:core/attack

#> Temp
# @private
    #declare objective ScoreToHealth

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage ScoreDamageCore < $Health ScoreDamageCore
# Health減算
    scoreboard players operation $Health ScoreDamageCore -= $Damage ScoreDamageCore
# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation $Health ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] store success score $hasDependency ScoreDamageCore run scoreboard players operation @s ScoreToHealth = $Health ScoreDamageCore
        execute if entity @s[type=player] if score $hasDependency ScoreDamageCore matches 0 run tellraw @a [{"text":"ERROR >> ","color":"red"},{"text":"ScoreToHealth","underlined":true,"color":"#4c4cff","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi/ScoreToHealth"}},{"text":"が導入されていないため\nPlayerにダメージを与えることは出来ません","color":"white"}]
    # Mob
        execute if entity @s[type=!player] if score $Health ScoreDamageCore matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health ScoreDamageCore
    
    # プレイヤー、またはドラゴンでないなら、ヘルス0でキル
        execute unless entity @s[type=player] unless entity @s[type=ender_dragon] if score $Health ScoreDamageCore matches ..0 run kill @s

    # ドラゴンならヘルス0でDragonPhaseを9にして墜落させる
        execute if entity @s[type=ender_dragon] if score $Health ScoreDamageCore matches ..0 as @e[type=minecraft:ender_dragon,team=!null,sort=nearest,limit=1] run data merge entity @s {DragonPhase:9}

    # ヘルスが1以上ならエフェクトダメージ
        execute unless entity @s[type=player] unless entity @s[type=ender_dragon] if score $Health ScoreDamageCore matches 1.. run data modify entity @s ActiveEffects append value {Id:19b,Amplifier:4b,Duration:1}
    
    # プレイヤーなら見た目だけダメージ
        execute if entity @s[type=player] run effect give @s instant_damage 1 30 true

    # プレイヤーかつヘルス0なら死亡メッセージ
        #execute if entity @s[type=player,tag=formchanger_Hit] if score $Health ScoreDamageCore matches ..0 run function formchanger:message/death/formchanger_trident

# 演出
    execute if score $Health ScoreDamageCore matches 1.. if entity @s[type=!player] run data modify entity @s ActiveEffects append value {Id:19b,Amplifier:4b,Duration:1}
    function formchanger_score_damage:core/damage_indicator
    
# リセット
    scoreboard players reset $Damage ScoreDamageCore
    scoreboard players reset $Health ScoreDamageCore
    scoreboard players reset $hasDependency
