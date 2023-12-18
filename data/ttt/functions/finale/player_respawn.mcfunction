effect give @s speed 99999 1 true
effect give @s jump_boost 99999 0 true
effect give @s resistance 99999 0 true
effect give @s regeneration 1 200 true
tp @s -118 15 21 -90 0
tag @s add bossplayer
execute unless entity @a[tag=bossplayer,tag=wgrp1target] run tag @r[tag=bossplayer] add wgrp1target
execute unless entity @a[tag=bossplayer,tag=wgrp2target] run tag @r[tag=bossplayer] add wgrp2target
execute unless entity @a[tag=bossplayer,tag=wgrp3target] run tag @r[tag=bossplayer] add wgrp3target
give @s[nbt=!{Inventory:[{tag:{baxe:1b}}]}] netherite_axe{display:{Name:'{"text":"Netherite Axe","color":"yellow","italic":false}'},HideFlags:39,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s}],baxe:1b} 1
item replace entity @s[nbt=!{Inventory:[{tag:{bshield:1b}}]}] weapon.offhand with shield{display:{Name:'{"text":"Shield","color":"yellow","italic":false}'},Unbreakable:1b,HideFlags:103,bshield:1b} 1
execute if score @e[type=marker,tag=sv,limit=1] dialogueseq matches 3 run give @s[nbt=!{Inventory:[{tag:{ring:1b}}]}] carrot_on_a_stick{display:{Name:'{"text":"Sonic\'s Secret Ring","color":"yellow","italic":false}',Lore:['{"text":"Spam right-click to dash","color":"gray","italic":false}','[{"text":"forward using a ","color":"gray","italic":false},{"text":"spindash","color":"aqua"},{"text":"."}]','{"text":"Action can damage nearby enemies.","color":"gray","italic":false}']},CustomModelData:9,ring:1b}

execute unless entity @e[type=iron_golem,tag=shutthefuckup] as @e[type=armor_stand,tag=watchertext,limit=1,sort=random] at @s run function ttt:finale/deathtext/base