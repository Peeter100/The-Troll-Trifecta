playsound custom.act1.mario.spit_gold master @a ~ ~ ~
tellraw @s [{"text":"You were turned into ","color":"#777A10"},{"text":"Gold ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":"!\nThere's now a ","color":"#777A10"},{"text":"25 Coins","color":"yellow"},{"text":" bounty on your head!"}]
effect give @s slowness 99999 255 true
effect give @s jump_boost 99999 200 true
item replace entity @s armor.head with gold_block{display:{Name:'{"text":"Golden Head","color":"yellow","italic":false}'},HideFlags:39,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-10,Operation:0,UUID:[I;1885114452,-1130215286,-1380897939,-1513978756]}]} 1
item replace entity @s armor.chest with golden_chestplate{display:{Name:'{"text":"Golden Chestplate","color":"yellow","italic":false}'},HideFlags:39,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-10,Operation:0,UUID:[I;1885114452,-1130215286,-1380897939,-1513978756]}]} 1
item replace entity @s armor.legs with golden_leggings{display:{Name:'{"text":"Golden Leggings","color":"yellow","italic":false}'},HideFlags:39,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-10,Operation:0,UUID:[I;1885114452,-1130215286,-1380897939,-1513978756]}]} 1
item replace entity @s armor.feet with golden_boots{display:{Name:'{"text":"Golden Boots","color":"yellow","italic":false}'},HideFlags:39,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-10,Operation:0,UUID:[I;1885114452,-1130215286,-1380897939,-1513978756]}]} 1
particle dust 1 1 0 1 ~ ~1 ~ 1 1 1 2 400 force @a
particle block gold_block ~ ~1 ~ 1 1 1 1 40 force @a
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
scoreboard players set @s deathreason 39
scoreboard players set @e[tag=sv,scores={dialogueseq=0}] dialoguetime 600
clear @s carrot_on_a_stick{goldflower:1b}
scoreboard players set @s rc 0