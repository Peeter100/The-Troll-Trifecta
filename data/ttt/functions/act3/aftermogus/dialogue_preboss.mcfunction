scoreboard players add @s dialoguetime 1

#execute if score @s dialoguetime matches 1..11 as @e[type=armor_stand,tag=p100,limit=1] at @s run tp @s ~ ~0.25 ~
execute if score @s dialoguetime matches 1..4 as @e[type=armor_stand,tag=p100,limit=1] at @s run tp @s ~ ~0.5 ~
execute if score @s dialoguetime matches 5..8 as @e[type=armor_stand,tag=p100,limit=1] at @s run tp @s ~ ~0.25 ~

execute if score @s dialoguetime matches 10 run data merge entity @e[type=armor_stand,tag=p100,limit=1] {Pose:{Head:[20f,0f,0f]},HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:103}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:105}}]}

execute if score @s dialoguetime matches 16 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You can't finish the map just yet!","color":"gold"}]
execute if score @s dialoguetime matches 54 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Before you leave the map, I-","color":"gold"}]
execute if score @s dialoguetime matches 93 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"I need your help.","color":"gold"}]
execute if score @s dialoguetime matches 127 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"I was gonna come by during that whole Among Us match,","color":"gold"}]
execute if score @s dialoguetime matches 182 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"but I was kinda busy scrolling through Twitter","color":"gold"}]
execute if score @s dialoguetime matches 218 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"until I encountered that pesky 1000 posts per day limit and the app broke...","color":"gold"}]
execute if score @s dialoguetime matches 311 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Y'know,","color":"gold"}]
execute if score @s dialoguetime matches 317 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"I decided to touch grass.","color":"gold"}]
execute if score @s dialoguetime matches 361 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Ummm...","color":"gold"}]
execute if score @s dialoguetime matches 370 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Which in this case means","color":"gold"}]
execute if score @s dialoguetime matches 394 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"I stopped using my phone,","color":"gold"}]
execute if score @s dialoguetime matches 426 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"came back to my computer","color":"gold"}]
execute if score @s dialoguetime matches 448 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"and decided to finish what I've started.","color":"gold"}]

execute if score @s dialoguetime matches 496 run function ttt:act3/aftermogus/trollge_appear

execute if score @s dialoguetime matches 566 at @e[type=armor_stand,tag=p100,limit=1] run playsound custom.finale.prefight.uhoh master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 566 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Uh oh.","color":"gold"}]

execute if score @s dialoguetime matches 586 run playsound custom.act1.undertale master @a -3 31 251 1000
execute if score @s dialoguetime matches 592 run clear @a
execute if score @s dialoguetime matches 592 run kill @e[type=item]
execute if score @s dialoguetime matches 592 run tp @a -118 11 21
execute if score @s dialoguetime matches 593 run kill @e[tag=forkill,tag=!trollge]

execute if score @s dialoguetime matches 600 run function ttt:finale/intro/finale_prepare
execute if score @s dialoguetime matches 620 run function ttt:finale/intro/finale_start

execute if score @s actunlocked matches 4.. if entity @a[team=p,scores={Game_Choice=1}] run function ttt:act3/aftermogus/skip