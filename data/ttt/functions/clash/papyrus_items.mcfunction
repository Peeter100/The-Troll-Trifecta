clear @a paper
kill @e[type=item]
tag @a remove 1hpchallenge
tag @a remove noheal
tag @a[team=p] add armoredup
effect give @a[team=p] resistance 2 255 true
item replace entity @a[team=p] armor.head with netherite_helmet{display:{Name:'{"text":"Netherite Helmet","color":"yellow","italic":false}'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:blast_protection",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:-1,Operation:0,UUID:[I;-1039417145,516050827,-1297193871,1908976040]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1072821123,-1729672482,-1806416211,-1302651929]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;975023478,1842431126,-1952478102,1984439259]}]} 1
item replace entity @a[team=p] armor.chest with netherite_chestplate{display:{Name:'{"text":"Netherite Chestplate","color":"yellow","italic":false}'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:blast_protection",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:-1,Operation:0,UUID:[I;-1039417146,516050827,-1297193871,1908976040]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1572821120,-1729672482,-1806416211,-1302651929]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;955023478,1842431126,-1952478102,1984439259]}]} 1
item replace entity @a[team=p] armor.legs with netherite_leggings{display:{Name:'{"text":"Netherite Leggings","color":"yellow","italic":false}'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:blast_protection",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:-1,Operation:0,UUID:[I;-1039417147,516050827,-1297193871,1908976040]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1072826120,-1729672482,-1806416211,-1302651929]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;975023678,1842431126,-1952478102,1984439259]}]} 1
item replace entity @a[team=p] armor.feet with netherite_boots{display:{Name:'{"text":"Netherite Boots","color":"yellow","italic":false}'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:blast_protection",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:-1,Operation:0,UUID:[I;-1039417148,516050827,-1297193871,1908976040]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1072821128,-1729672482,-1806416211,-1302651929]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;975023878,1842431126,-1952478102,1984439259]}]} 1
item replace entity @a[team=p] hotbar.0 with iron_sword{display:{Name:'{"text":"Swift Sword","color":"yellow","italic":false}'},HideFlags:7,Unbreakable:1b,armorsword:1b,Enchantments:[{id:"minecraft:knockback",lvl:3s},{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:sweeping_edge",lvl:3s}]} 1
item replace entity @a[team=p] hotbar.1 with netherite_axe{display:{Name:'{"text":"Netherite Axe","color":"yellow","italic":false}'},HideFlags:7,Unbreakable:1b,armoraxe:1b,Enchantments:[{id:"minecraft:sharpness",lvl:20s}]} 1
item replace entity @a[team=p] hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Snow Blaster ","color":"yellow","italic":false},{"text":"(Melee)","color":"gray","italic":true}]',Lore:['{"text":"Creates a powerful snow","color":"gray","italic":false}','{"text":"explosion in front of you.","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:6,armorcannon:1b} 1
item replace entity @a[team=p] weapon.offhand with shield{display:{Name:'{"text":"Shield","color":"white","italic":false}'},HideFlags:7,Unbreakable:1b,armorshield:1b} 1
execute unless score @s cr_beeninbattle matches 4.. run summon lightning_bolt -58 16 150

execute if entity @s[scores={d1=1,d2=1,d3=1,d4=1,d5=1,d6=1,st_bossdiff=1},tag=hasdiamonds] run function ttt:clash/papyrus_items_op