
# 自分まで引き込むわけにはいかない
    tag @s add DH_No_Hit

# 視点の先にクラウド君召喚、そこを中心としてアイテムやモブなどすべてを吸引
    execute positioned ~ ~1.5 ~ run summon area_effect_cloud ^ ^ ^12 {Duration:120,NoGravity:true,Tags:["D_Hole_Core","D_H_Set","DH_No_Hit"]}

# 効果
    execute at @e[tag=D_Hole_Core] as @e[tag=D_Hole_Core] run function formchanger:use/ex/doppel_brast/charge_hole