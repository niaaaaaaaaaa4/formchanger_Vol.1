
# オフハンドは、、？
      execute if predicate formchanger:battery_on_offhand run function formchanger:use/items/battery_offhand/kinds_of_batterys

# 特殊効果
  # スニーク中浮遊効果
    execute if entity @s[scores={Nia_Sneaktotaltime=1600..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run tag @s add Levitation_Now
    execute if entity @s[scores={Nia_Sneaktotaltime=1600..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run effect give @e[distance=..3.33] levitation 1 1
    execute if entity @s[scores={Nia_Sneaktotaltime=1600..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run particle firework ~ ~0.1 ~ 1.55 -0.1 1.55 0.05 25 normal @s
    execute if entity @s[scores={Nia_Sneaktotaltime=1600..},predicate=formchanger:sneak,predicate=formchanger:battery_on_offhand] run playsound entity.firework_rocket.shoot player @s ~ ~-1 ~ 0.1 1.66

    execute if entity @s[tag=Levitation_Now,predicate=!formchanger:sneak] run effect clear @e[distance=..3.33] levitation
    execute if entity @s[tag=Levitation_Now,predicate=!formchanger:sneak] run tag @s remove Levitation_Now

  # シフト時エアアーツ発動、シフト時間（１～１５９９）によって効果が変動
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1..50}] run summon armor_stand ^ ^1 ^2.55 {NoGravity:true,Invisible:true,Tags:[Target]}

    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=250..300}] run summon armor_stand ^2.55 ^1 ^ {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=250..300}] run summon armor_stand ^-2.55 ^1 ^ {NoGravity:true,Invisible:true,Tags:[Target]}
    
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=550..600}] run summon armor_stand ^ ^1 ^-2.55 {NoGravity:true,Invisible:true,Tags:[Target]}
    
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=800..830}] run summon armor_stand ~-1.55 ~1.5 ~-1.55 {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=830..860}] run summon armor_stand ~-1.55 ~1.5 ~1.55 {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=860..890}] run summon armor_stand ~1.55 ~1.5 ~-1.55 {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=890..920}] run summon armor_stand ~1.55 ~1.5 ~1.55 {NoGravity:true,Invisible:true,Tags:[Target]}

    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1100..1140}] run summon armor_stand ~ ~1 ~2.55 {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1140..1180}] run summon armor_stand ~2.55 ~1 ~ {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1180..1220}] run summon armor_stand ~-2.55 ~1 ~ {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1220..1260}] run summon armor_stand ~ ~1 ~-2.55 {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1260..1300}] run summon armor_stand ~-2.55 ~1 ~-2.55 {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1300..1340}] run summon armor_stand ~-2.55 ~1 ~2.55 {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1340..1380}] run summon armor_stand ~2.55 ~1 ~-2.55 {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:battery_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1380..1420}] run summon armor_stand ~2.55 ~1 ~2.55 {NoGravity:true,Invisible:true,Tags:[Target]}

  # サイクロン装備時、コンボ最終段追加
    execute if entity @s[predicate=formchanger:batterys/f_battery/cyclone_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1450..1475}] facing ^ ^ ^ run summon armor_stand ^ ^ ^ {NoGravity:true,Invisible:true,Tags:[Lotate]}
    execute if entity @s[predicate=formchanger:batterys/f_battery/cyclone_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1450..}] as @e[tag=Lotate] run tp @s ~ ~ ~

    execute if entity @s[predicate=formchanger:batterys/f_battery/cyclone_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1450..}] at @e[tag=Lotate] run tp @e[tag=Lotate] ^ ^ ^ ~18 ~
    execute if entity @s[predicate=formchanger:batterys/f_battery/cyclone_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1450..}] at @e[tag=Lotate] run summon armor_stand ^ ^1.25 ^4.35 {NoGravity:true,Invisible:true,Tags:[Target]}
    execute if entity @s[predicate=formchanger:batterys/f_battery/cyclone_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1450..}] at @e[tag=Lotate] run summon armor_stand ^ ^1.25 ^6.95 {NoGravity:true,Invisible:true,Tags:[Target]}

      execute at @e[tag=Target] as @s run function formchanger:use/ex/airbrast
        kill @e[tag=Target]
        execute unless predicate formchanger:sneak run kill @e[tag=Lotate]

#execute if entity @s[predicate=formchanger:batterys/f_battery/cyclone_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1450..}] run give @s acacia_boat 1
