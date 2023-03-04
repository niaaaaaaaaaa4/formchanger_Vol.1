
# 変化するツール
    execute if score @s Nia_Sneaktime matches 0..30 run title @s actionbar {"text": "- Changeing..[■_________] -","color": "#66ffff"}
    execute if score @s Nia_Sneaktime matches 31..60 run title @s actionbar {"text": "- Changeing..[■■________] -","color": "#66ffff"}
    execute if score @s Nia_Sneaktime matches 61..90 run title @s actionbar {"text": "- Changeing..[■■■_______] -","color": "#66ffff"}
    execute if score @s Nia_Sneaktime matches 91..120 run title @s actionbar {"text": "- Changeing..[■■■■______] -","color": "#66ffff"}
    execute if score @s Nia_Sneaktime matches 121..150 run title @s actionbar {"text": "- Changeing..[■■■■■_____] -","color": "#66ffff"}
    execute if score @s Nia_Sneaktime matches 151..180 run title @s actionbar {"text": "- Changeing..[■■■■■■____] -","color": "#66ffff"}
    execute if score @s Nia_Sneaktime matches 181..210 run title @s actionbar {"text": "- Changeing..[■■■■■■■___] -","color": "#66ffff"}
    execute if score @s Nia_Sneaktime matches 211..240 run title @s actionbar {"text": "- Changeing..[■■■■■■■■__] -","color": "#66ffff"}
    execute if score @s Nia_Sneaktime matches 241..270 run title @s actionbar {"text": "- Changeing..[■■■■■■■■■_] -","color": "#66ffff"}
    execute if score @s Nia_Sneaktime matches 271..299 run title @s actionbar {"text": "- Changeing..[■■■■■■■■■■] -","color": "#66ffff"}

    execute if score @s Nia_Sneaktime matches 300.. run title @s actionbar {"text": "- Changed!!! -","color": "blue"}
    execute if score @s Nia_Sneaktime matches 300.. run scoreboard players set @s CH_cooldown 60

    execute if predicate formchanger:boltaction_on_mainhand run scoreboard players set @s[scores={Nia_Sneaktime=300..}] CH_cooldown 20
    execute if predicate formchanger:re_electchanger_on_mainhand run scoreboard players set @s[scores={Nia_Sneaktime=300..}] CH_cooldown 20
    execute if predicate formchanger:shulkers_replica/shulkers_disguise_on_mainhand run scoreboard players set @s[scores={Nia_Sneaktime=300..}] CH_cooldown 20
    execute if predicate formchanger:shulkers_replica/shulkers_copy_on_mainhand run scoreboard players set @s[scores={Nia_Sneaktime=300..}] CH_cooldown 20
    execute if predicate formchanger:shulkers_replica/perfectmatch_on_mainhand run scoreboard players set @s[scores={Nia_Sneaktime=300..}] CH_cooldown 20
    
# アップグレードキット
    execute if data entity @s[predicate=formchanger:sneak] SelectedItem.tag.Status{ItemID:Upgrade_Kit} run playsound block.enchantment_table.use player @s ~ ~ ~ 0.25 1.11
    execute if data entity @s[predicate=formchanger:sneak] SelectedItem.tag.Status{ItemID:Upgrade_Kit} run particle enchant ~ ~ ~ 0.1 0.1 0.1 0.33 20 force 
