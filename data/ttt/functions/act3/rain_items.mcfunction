execute if entity @s[scores={am_seentrollge=0}] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"STEP 2 - PUT ALL PLANT INGREDIENTS INTO THE COOKER","color":"#942626","font":"trollge"}]
execute if entity @s[scores={am_seentrollge=0}] run playsound custom.t2s.trollge.step2 master @a ~ ~ ~ 1000

execute if entity @s[scores={am_seentrollge=1..,am_rickinteract=0}] run tellraw @a [{"text":"","color":"yellow"},{"text":"Tip: ","color":"light_purple","bold":true},{"text":"You can talk to "},{"text":"Rick","color":"aqua"},{"text":" to get a shortcut!"}]
execute if entity @s[scores={am_seentrollge=1..}] run title @a actionbar {"text":"Use all plant ingredients","color":"green"}

give @p[scores={y=24..27},team=p] melon_seeds{display:{Name:'{"text":"Olive Seeds","color":"white","italic":false}'},seed:1b,ing:1b,good:1b} 1
give @p[scores={y=24..27},team=p] glowstone_dust{display:{Name:'{"text":"Glowstone Dust","color":"white","italic":false}'},wrong:1b,ing:1b} 1
give @p[scores={y=24..27},team=p] sunflower{display:{Name:'{"text":"Sunflower","color":"white","italic":false}'},sunflower:1b,ing:1b,good:1b} 1
give @p[scores={y=24..27},team=p] fern{display:{Name:'{"text":"Fern Leaf","color":"white","italic":false}'},fern:1b,ing:1b,good:1b} 1
give @p[scores={y=24..27},team=p] large_amethyst_bud{display:{Name:'{"text":"Crystal","color":"white","italic":false}'},wrong:1b,ing:1b} 1
give @p[scores={y=24..27},team=p] gunpowder{display:{Name:'{"text":"Gunpowder","color":"white","italic":false}'},gunpowder:1b,ing:1b,goodr:1b} 1