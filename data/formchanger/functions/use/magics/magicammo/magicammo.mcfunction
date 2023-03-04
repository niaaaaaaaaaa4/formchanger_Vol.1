
# 弾召喚
    summon minecraft:armor_stand ~ ~1.22 ~ {Tags:["M_ammo","Move","Forrow","Set","Nia_M","S_10"],NoGravity:true,Invisible:true}
    #execute anchored eyes as @e[tag=Set,limit=1,sort=nearest] run tp @s ^ ^ ^ ~ ~
    execute anchored eyes as @e[tag=Set,limit=1,sort=nearest] run tp @s ^ ^-0.455 ^0.22 ~ ~
    

    # 魔法のステータス設定
        # 弾速
        scoreboard players set @e[tag=Set,limit=1,sort=nearest] Speed 80
        # 射程
        scoreboard players set @e[tag=Set,limit=1,sort=nearest] Range 80
        # 消費
        scoreboard players remove @s MP 50

        # ID
        execute store result score @e[tag=Set,limit=1,sort=nearest] Tile_ID run scoreboard players get @s Play_ID

        # クールダウン
        scoreboard players set @s M_cooldown 30

   
# 準備完了、発射だ
    

