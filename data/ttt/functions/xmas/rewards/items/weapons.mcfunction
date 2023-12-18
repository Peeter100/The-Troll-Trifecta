execute if score @s npcbodytp matches ..3 run tellraw @p[tag=needsgift] {"text":"You got a sword!","color":"green"}
execute if score @s npcbodytp matches 4.. run tellraw @p[tag=needsgift] {"text":"You got an axe!","color":"green"}

execute if score @s npcbodytp matches 1 run give @p[tag=needsgift] wooden_sword{display:{Name:'{"text":"Hot Cocoa Sword","color":"white","italic":false}'},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s},{id:"minecraft:sharpness",lvl:2s}]} 1
execute if score @s npcbodytp matches 2 run give @p[tag=needsgift] iron_sword{display:{Name:'{"text":"Snow Frosted Sword","color":"white","italic":false}'},Enchantments:[{id:"minecraft:sharpness",lvl:4s}]} 1
execute if score @s npcbodytp matches 3 run give @p[tag=needsgift] netherite_sword{display:{Name:'{"text":"Charcoal Sword","color":"gold","italic":false}'},Enchantments:[{id:"minecraft:sharpness",lvl:6s},{id:"minecraft:sweeping",lvl:3s}]} 1

execute if score @s npcbodytp matches 4 run give @p[tag=needsgift] wooden_axe{display:{Name:'{"text":"Hot Cocoa Axe","color":"white","italic":false}'},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s},{id:"minecraft:sharpness",lvl:2s}]} 1
execute if score @s npcbodytp matches 5 run give @p[tag=needsgift] iron_axe{display:{Name:'{"text":"Snow Frosted Axe","color":"white","italic":false}'},Enchantments:[{id:"minecraft:sharpness",lvl:6s}]} 1
execute if score @s npcbodytp matches 6 run give @p[tag=needsgift] netherite_axe{display:{Name:'{"text":"Charcoal Axe","color":"gold","italic":false}'},Enchantments:[{id:"minecraft:sharpness",lvl:9s}]} 1