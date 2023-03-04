
# ヒット音
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.5 1.5
    
# ダメージを設定
    data modify storage formchanger_score_damage: Damage set value 1.50
    
    function formchanger_score_damage:api/attack

# 消滅
    execute as @e[limit=1,sort=nearest,tag=Nia_M] run tag @s add Kill