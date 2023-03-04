
# スコアボード作成
    scoreboard objectives add MP dummy
        scoreboard players set @a MP 1000
        
    scoreboard objectives add Play_ID dummy
    scoreboard objectives add Tile_ID dummy
    scoreboard objectives add Pile_ID dummy

    scoreboard objectives add Nia_Sneak minecraft.custom:sneak_time
    scoreboard objectives add Nia_Sneaktime minecraft.custom:sneak_time
    scoreboard objectives add Nia_M_Sneaktime minecraft.custom:sneak_time
    scoreboard objectives add Nia_Sneaktotaltime minecraft.custom:sneak_time

    scoreboard objectives add Grow_count dummy
    scoreboard objectives add Thunder_count dummy
        scoreboard players set @s[scores={Thunder_count=..0}] Thunder_count 1
    
    scoreboard objectives add R_Click minecraft.used:carrot_on_a_stick
    #scoreboard objectives add R_Click minecraft.killed:armor_stand

    scoreboard objectives add CH_cooldown dummy
    scoreboard objectives add EV_cooldown dummy
    scoreboard objectives add DP_Cooldown dummy

    scoreboard objectives add Recast_2 dummy
        scoreboard players set @a Recast_2 0
    scoreboard objectives add M_cooldown dummy
        scoreboard players set @a M_cooldown 0
    scoreboard objectives add Left_Shoot dummy
        scoreboard players set @a Left_Shoot 0

    scoreboard objectives add D_Charge dummy
        scoreboard players set @a D_Charge 0
    scoreboard objectives add DEX_Charge dummy
        scoreboard players set @a DEX_Charge 0

    scoreboard objectives add Motionvalue dummy

    scoreboard objectives add Constant dummy

    scoreboard players set $Constant.value.-1 Constant -1
    #define score_holder $Constant.value.-1
    scoreboard players set $Constant.value.1 Constant 1
    #define score_holder $Constant.value.1
    scoreboard players set $Constant.value.2 Constant 2
    #define score_holder $Constant.value.2
    scoreboard players set $Constant.value.3 Constant 3
    #define score_holder $Constant.value.3
    scoreboard players set $Constant.value.5 Constant 5
    #define score_holder $Constant.value.5
    scoreboard players set $Constant.value.10 Constant 10
    #define score_holder $Constant.value.10
    scoreboard players set $Constant.value.15 Constant 15
    #define score_holder $Constant.value.15
    scoreboard players set $Constant.value.20 Constant 20
    #define score_holder $Constant.value.20
    scoreboard players set $Constant.value.30 Constant 30
    #define score_holder $Constant.value.30
    scoreboard players set $Constant.value.50 Constant 50
    #define score_holder $Constant.value.50
    scoreboard players set $Constant.value.100 Constant 100
    #define score_holder $Constant.value.100
    scoreboard players set $Constant.value.18000 Constant 18000
    #define score_holder $Constant.value.18000

    scoreboard objectives add Speed dummy
    scoreboard objectives add Speed_2 dummy
    scoreboard objectives add Speed_temp dummy
    scoreboard objectives add Range dummy

    #scoreboard objectives add X0 dummy
    #scoreboard objectives add Y0 dummy
    #scoreboard objectives add Z0 dummy
    #scoreboard players reset @e X0
    #scoreboard players reset @e Y0
    #scoreboard players reset @e Z0

    #scoreboard objectives add X1 dummy
    #scoreboard objectives add Y1 dummy
    #scoreboard objectives add Z1 dummy
    #scoreboard players reset @e X1
    #scoreboard players reset @e Y1
    #scoreboard players reset @e Z1

# 乱数
    scoreboard objectives add Random dummy
    scoreboard players set #100 Random 100
    scoreboard players set #2 Random 2