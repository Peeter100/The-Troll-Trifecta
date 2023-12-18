execute if score @s dialoguetime matches ..15 as @e[type=armor_stand,tag=sniper,limit=1] at @s run tp @s ~ ~ ~0.2
execute if score @s dialoguetime matches 16 run kill @e[type=armor_stand,tag=sniper]

#execute if score @s dialoguetime matches 1 at @p[tag=blockcause] run summon armor_stand ~ 30 158 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","p100b-vis"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:10}}]}
#execute if score @s dialoguetime matches 1 at @p[tag=blockcause] run summon armor_stand ~ 30 158 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["forkill","p100b-head"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[5f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}]}
#execute if score @s dialoguetime matches 1 at @p[tag=blockcause] run playsound custom.act1.deny master @a ~ 30.5 158 1000
#execute if score @s dialoguetime matches 1 run playsound custom.act1.va.fnf_intro master @a 0 30.5 158 1000
#execute if score @s dialoguetime matches 1 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You're not cool enough to- uh...","color":"gold"}]
execute if score @s dialoguetime matches 15 run item replace entity @e[type=armor_stand,tag=p100b-vis] weapon.mainhand with emerald{CustomModelData:8}
execute if score @s dialoguetime matches 15 run item replace entity @e[type=armor_stand,tag=p100b-vis] weapon.offhand with air
execute if score @s dialoguetime matches 39 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You're not cool enough to...","color":"gold"}]
execute if score @s dialoguetime matches 80 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Uhh...","color":"gold"}]
execute if score @s dialoguetime matches 100 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"...get close to this castle!","color":"gold"}]
execute if score @s dialoguetime matches 150 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You can become cool if you beat me in a rap battle.","color":"gold"}]
execute if score @s dialoguetime matches 240 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"What?","color":"gold"}]
execute if score @s dialoguetime matches 252 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"No!","color":"gold"}]
execute if score @s dialoguetime matches 269 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Friday Night Funkin' is NOT a dead game.","color":"gold"}]
execute if score @s dialoguetime matches 325 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"(Wait, it's over 3 years old now?)","color":"gold"}]
execute if score @s dialoguetime matches 371 run playsound custom.act1.undertale master @a 0 30.5 158 1000
execute if score @s dialoguetime matches 377 run function ttt:act1/begin_fnf