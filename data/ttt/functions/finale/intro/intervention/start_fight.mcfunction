scoreboard players set @s deathtime 0
scoreboard players set @s dialogueseq 1
scoreboard players set @s f3_deaths 0
tag @s add preventdeath
tag @a[team=p,scores={hp=1..}] add bossplayer
tag @r[tag=bossplayer] add wgrp1target
tag @r[tag=bossplayer] add wgrp2target
tag @r[tag=bossplayer] add wgrp3target
setblock -99 16 21 air
setblock -101 16 21 air
setblock -100 16 20 air
setblock -100 16 22 air
setblock -100 17 21 air

effect give @a[team=p] speed 99999 1 true
effect give @a[team=p] jump_boost 99999 0 true
effect give @a[team=p] resistance 99999 0 true
effect give @a[team=p] regeneration 1 200 true
effect clear @a invisibility
give @a[team=p] netherite_axe{display:{Name:'{"text":"Netherite Axe","color":"yellow","italic":false}'},HideFlags:39,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s}],baxe:1b} 1
item replace entity @a[team=p] armor.head with netherite_helmet{display:{Name:'{"text":"Netherite Helmet","color":"yellow","italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:20,Operation:0,UUID:[I;-204432847,274484339,-1602784770,872008762]},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;10055286,1761690445,-1336949646,1505323417]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;10055280,1761690445,-1336949646,1505323417]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;10054320,1761690445,-1336949646,1505323417]}],Unbreakable:1b,HideFlags:103} 1
item replace entity @a[team=p] armor.chest with netherite_chestplate{display:{Name:'{"text":"Netherite Chestplate","color":"yellow","italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;10055285,1761690445,-1336949646,1505323417]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;10055280,1761690456,-1336949646,1505323417]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;10054320,1761656745,-1336949646,1505323417]}],Unbreakable:1b,HideFlags:103} 1
item replace entity @a[team=p] armor.legs with netherite_leggings{display:{Name:'{"text":"Netherite Leggings","color":"yellow","italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;10055284,1761690445,-1336949646,1505323417]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;10055280,1761690445,-1336459646,1505323417]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;10054320,1761652445,-1336949646,1505323417]}],Unbreakable:1b,HideFlags:103} 1
item replace entity @a[team=p] armor.feet with netherite_boots{display:{Name:'{"text":"Netherite Boots","color":"yellow","italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;10055283,1761690445,-1336949646,1505323417]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;10055280,1761690445,-1336949646,1425323417]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;10054320,1761690185,-1336949646,1505323417]}],Unbreakable:1b,HideFlags:103} 1
item replace entity @a[team=p] weapon.offhand with shield{display:{Name:'{"text":"Shield","color":"yellow","italic":false}'},Unbreakable:1b,HideFlags:103,bshield:1b} 1

tag 00000004-0000-0000-0000-000000000000 add faceplayer
scoreboard players set .trollgefight npcbodytp 1
function ttt:finale/phase1/attack_charging_convert
schedule function ttt:finale/phase1/p100_targetchange 20t replace
schedule function ttt:finale/phase1/p100_mobattack_schedule 100t replace
schedule function ttt:finale/deathtip/tipseq1_1 100t replace