
# オフハンドは、、？
    execute if predicate formchanger:battery_on_offhand run function formchanger:use/items/battery_offhand/kinds_of_batterys

# 特殊効果
   #execute as @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,scores={Nia_Sneaktotaltime=150..170}] at @s run summon armor_stand ^ ^ ^1 {Invisible:false,NoGravity:true,Tags:[Prizm_Edge]}

# 斬撃
    execute if entity @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,predicate=formchanger:sneak] run effect give @s speed 1 3 true

    execute as @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=150..165}] as @s run function formchanger:use/ex/prizm_slash/slash_prizm1
    execute as @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=335..355}] as @s run function formchanger:use/ex/prizm_slash/slash_prizm2-1
    execute as @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=395..415}] as @s run function formchanger:use/ex/prizm_slash/slash_prizm2-2

    execute as @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=665..680}] as @s run function formchanger:use/ex/prizm_slash/slash_prizm_b

    execute as @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=890..910}] as @s run function formchanger:use/ex/prizm_slash/slash_prizm3
    execute as @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=940..960}] as @s run function formchanger:use/ex/prizm_slash/slash_prizm3
    execute as @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=990..1010}] as @s run function formchanger:use/ex/prizm_slash/slash_prizm3

    execute as @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1300..1320}] if entity @e[distance=..12,nbt={ActiveEffects:[{Id:24,Amplifier:5b}]}] at @e[distance=..12,nbt={ActiveEffects:[{Id:24,Amplifier:5b}]}] run function formchanger:use/ex/prizm_slash/slash_prizm_f-2
    execute as @s[predicate=formchanger:batterys/f_battery/prismbarrage_on_offhand,predicate=formchanger:sneak,scores={Nia_Sneaktotaltime=1300..1320}] unless entity @e[distance=..12,type=area_effect_cloud] at @s run function formchanger:use/ex/prizm_slash/slash_prizm_f-1
    
    #kill @e[tag=Prizm_Edge]
    scoreboard players reset @a Random