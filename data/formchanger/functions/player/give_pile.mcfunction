
# 1づつ増えるID
    scoreboard players add $PileID_dummy Pile_ID 1
    scoreboard players operation @s Pile_ID = $PileID_dummy Pile_ID

# リセットしておく
    execute if score $PileID_dummy Pile_ID matches 100.. run scoreboard players set $PileID_dummy Pile_ID 0