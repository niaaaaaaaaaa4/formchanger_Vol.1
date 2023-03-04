
# 下のブロックは、、？
    execute if predicate formchanger:canaxe run function formchanger:use/next/isaxe
    execute if predicate formchanger:canpickaxe run function formchanger:use/next/ispickaxe
    execute if predicate formchanger:canhoe run function formchanger:use/next/ishoe
    execute if predicate formchanger:canshovel run function formchanger:use/next/isshovel

# もしツールが投げ捨てられたら
    #execute if predicate formchanger:nomainhand as @e[type=item,distance=1] run function formchanger:use/change/reset