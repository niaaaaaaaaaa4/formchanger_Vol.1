# ヒット音
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.5 1.5

# ダメージを設定
    data modify storage formchanger_score_damage: Damage set value 3.00


    function formchanger_score_damage:api/attack

# タグ削除
    tag @s remove Hit

# テスト
    #loot spawn ~ ~ ~ loot formchanger:goods/upgrade_kit