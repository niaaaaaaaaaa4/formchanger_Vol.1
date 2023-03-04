
# エフェクト
    particle cloud ~ ~ ~ 0.25 10 0.25 0.009 450 normal @a
    particle end_rod ~ ~ ~ 0 10 0 0.002 50 normal @a

    playsound block.amethyst_block.hit player @a ~ ~ ~ 1.9 1
    playsound item.crossbow.loading_end player @a ~ ~ ~ 2 1
    playsound block.amethyst_block.hit player @a ~ ~ ~ 1.8 1

# 解除＆ダメージ
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["PPP"]}
    execute at @e[tag=PPP] as @e[limit=1,sort=nearest,nbt={ActiveEffects:[{Id:24,Amplifier:5b}]}] run function formchanger:use/ex/prizm_slash/damages/slash_p_f
    execute at @e[tag=PPP] as @e[limit=1,sort=nearest,nbt={ActiveEffects:[{Id:24,Amplifier:5b}]}] run effect clear @s glowing

#summon spectral_arrow ~ ~3 ~ 