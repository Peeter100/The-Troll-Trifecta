execute unless entity @e[type=armor_stand,tag=extrastand] run function ttt:lobby/summon_extras
item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Look At Me","color":"yellow","italic":false}',Lore:['{"text":"Makes all the NPCs look at you.","color":"gray","italic":false}']},npcicon:1b,clearicon:1b,CustomModelData:52} 1
tp @s 18 33 -6 180 0