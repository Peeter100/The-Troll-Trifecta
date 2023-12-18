execute if block ~ ~ ~ red_mushroom run give @s carrot_on_a_stick{display:{Name:'{"text":"Super Mushroom","color":"red","italic":false}',Lore:['{"text":"Right-click to use.","color":"gray","italic":false}']},CustomModelData:7,mushroom:1b} 1
execute if block ~ ~ ~ orange_tulip run give @s carrot_on_a_stick{display:{Name:'{"text":"Fire Flower","color":"gold","italic":false}',Lore:['{"text":"Right-click to use.","color":"gray","italic":false}']},CustomModelData:8,fireflower:1b} 1
execute if block ~ ~ ~ brown_mushroom run give @s carrot_on_a_stick{display:{Name:'{"text":"Dark Mushroom","color":"#E05A00","italic":false}',Lore:['{"text":"Right-click to use.","color":"gray","italic":false}']},CustomModelData:10,poisonshroom:1b} 1
execute if block ~ ~ ~ blue_orchid run give @s carrot_on_a_stick{display:{Name:'{"text":"Ice Flower","color":"aqua","italic":false}',Lore:['{"text":"Right-click to use.","color":"gray","italic":false}']},CustomModelData:11,iceflower:1b} 1
execute if block ~ ~ ~ dandelion run give @s carrot_on_a_stick{display:{Name:'{"text":"Gold Flower","color":"yellow","italic":false}',Lore:['{"text":"Right-click to use.","color":"gray","italic":false}']},CustomModelData:12,goldflower:1b} 1
execute if block ~ ~ ~ pink_tulip run give @s carrot_on_a_stick{display:{Name:'{"text":"Lean Flower","color":"light_purple","italic":false}',Lore:['{"text":"Right-click to use.","color":"gray","italic":false}']},CustomModelData:13,leanflower:1b} 1
execute if block ~ ~ ~ oxeye_daisy run give @s carrot_on_a_stick{display:{Name:'{"text":"Thunder Flower","color":"white","italic":false}',Lore:['{"text":"Right-click to use.","color":"gray","italic":false}']},CustomModelData:14,thunderflower:1b} 1

playsound entity.sheep.shear master @a ~ ~ ~
tag @e[tag=sv] add gotwand
setblock ~ ~ ~ air destroy

scoreboard players set @s rc 0