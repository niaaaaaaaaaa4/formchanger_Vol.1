
# 上空に球体が、その球体から魔法弾が発射され続ける
# クラウド君召喚(上空が空気でないと発動しない)
    execute if block ~ ~10.5 ~ #formchanger:no_collision run summon area_effect_cloud ~ ~10.5 ~ {Duration:200,NoGravity:true,Tags:["DR_Core","DR_NoHit","DR_Set","CantHit"]}

# チャージが二段階
    #execute if entity @s[scores={D_Charge=8}] run data merge entity @e[limit=1,tag=DR_Set] {Tags:["2nd"]}

# 確認用モブの頭装備コマンド
    #item replace entity @e[tag=DR_Core] armor.head with skeleton_skull

# 判別したい
    execute as @e[tag=DR_Set] run scoreboard players set @s Tile_ID 0
    scoreboard players operation @e[tag=DR_Set] Tile_ID = @s Play_ID
    execute as @e[tag=DR_Set] unless score @s Pile_ID matches 0.. run function formchanger:player/give_pile

# コスト
    scoreboard players operation @s DEX_Charge -= $Constant.value.3 Constant
