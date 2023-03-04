
particle dust 0.18 0.078 0.192 1 ~ ~ ~ 0 0 0 0 1 normal @a
particle dust 0.639 0.451 0.659 0 ~ ~ ~ 0 0 0 0 1 normal @a
playsound entity.fox.teleport player @a ~ ~ ~ 0.01 1.2
        
execute as @s[scores={Motionvalue=100..130}] at @s facing entity @e[limit=1,sort=nearest,tag=DR_Core] eyes run tp @s ^ ^ ^-0.025
execute as @s[scores={Motionvalue=..100}] at @s facing entity @p[limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.17
execute as @s[scores={Motionvalue=..75}] at @s facing entity @p[limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.3

execute if entity @p[dx=0] positioned ^-0.75 ^-0.75 ^-0.75 if entity @s[dx=0] at @s run particle dust 0.639 0.451 0.659 1.5 ~ ~ ~ 0.1 0.1 0.1 0 20 normal @a
execute if entity @p[dx=0] positioned ^-0.75 ^-0.75 ^-0.75 if entity @s[dx=0] run effect give @p[limit=1,sort=nearest] instant_health 1 0 true 
execute if entity @p[dx=0] positioned ^-0.75 ^-0.75 ^-0.75 if entity @s[dx=0] run playsound entity.player.levelup player @a ~ ~ ~ 0.16 0.38
execute if entity @p[dx=0] positioned ^-0.75 ^-0.75 ^-0.75 if entity @s[dx=0] run kill @e[tag=DR_ammo,sort=nearest,limit=1]