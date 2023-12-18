tag @s add am_cankill
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Kill","color":"red","italic":false}',Lore:['{"text":"Right-click to kill a nearby crewmate.","color":"gray","italic":false}']},CustomModelData:20,lockedgus:1b,killicon:1b,Enchantments:[{}]} 1
tag @e[tag=killdetect] add done