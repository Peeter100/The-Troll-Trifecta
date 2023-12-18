execute if score @s dialoguetime matches ..415 as @e[type=armor_stand,tag=sniper,limit=1] at @s run tp @s ~ ~ ~0.2
execute if score @s dialoguetime matches 416 run kill @e[type=armor_stand,tag=sniper]

execute if score @s dialoguetime matches 415 run item replace entity @e[type=armor_stand,tag=p100b-vis] weapon.mainhand with emerald{CustomModelData:8}
execute if score @s dialoguetime matches 415 run item replace entity @e[type=armor_stand,tag=p100b-vis] weapon.offhand with air

execute if score @s dialoguetime matches 435 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You're not allowed to carry firearms near the castle!","color":"gold"}]

execute if score @s dialoguetime matches 501 run clear @a carrot_on_a_stick{wgun:1b}
execute if score @s dialoguetime matches 501 run kill @e[type=item,nbt={Item:{tag:{wgun:1b}}}]
execute if score @s dialoguetime matches 501 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"I'll be taking that and never giving it back!","color":"gold"}]

execute if score @s dialoguetime matches 559 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Unless...","color":"gold"}]
execute if score @s dialoguetime matches 584 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You beat me in a rap battle!","color":"gold"}]
execute if score @s dialoguetime matches 640 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"What?","color":"gold"}]
execute if score @s dialoguetime matches 652 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"No!","color":"gold"}]
execute if score @s dialoguetime matches 669 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Friday Night Funkin' is NOT a dead game.","color":"gold"}]
execute if score @s dialoguetime matches 725 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"(Wait, it's over 3 years old now?)","color":"gold"}]
execute if score @s dialoguetime matches 771 run playsound custom.act1.undertale master @a 0 30.5 158 1000
execute if score @s dialoguetime matches 777 run function ttt:act1/begin_fnf