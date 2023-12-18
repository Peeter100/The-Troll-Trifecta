scoreboard players add @s dialoguetime 1

execute if score @s dialoguetime matches 28 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Good job on winning the Among Us game!","color":"gold"}]
execute if score @s dialoguetime matches 67 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Did you get anything?","color":"gold"}]

execute if score @s dialoguetime matches 96 run tellraw @a [{"text":"<","color":"white"},{"selector":"@r[tag=amplayer]","color":"aqua"},{"text":"> "},{"text":"A button.","color":"aqua"}]

execute if score @s dialoguetime matches 116 at @e[type=armor_stand,tag=tailshead,limit=1] run playsound custom.t2s.tails.act3_button master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 116 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"A button?","color":"gold"}]
execute if score @s dialoguetime matches 116 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:63}
execute if score @s dialoguetime matches 137 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Is it like a special button?","color":"gold"}]
execute if score @s dialoguetime matches 180 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Oh!","color":"gold"}]
execute if score @s dialoguetime matches 180 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:61}
execute if score @s dialoguetime matches 188 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Can you place it on that gold block over there?","color":"gold"}]
execute if score @s dialoguetime matches 188 if score @s dialogueseq matches 1 run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:56}
execute if score @s dialoguetime matches 242 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I saw that \"Finish the map\" sign and was wondering what it does.","color":"gold"}]
execute if score @s dialoguetime matches 318 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I assume you've had the same question.","color":"gold"}]
execute if score @s dialoguetime matches 318 if score @s dialogueseq matches 1 run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:52}
execute if score @s dialoguetime matches 318 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:63}

execute if score @s dialoguetime matches 363 run scoreboard players enable @a[team=p] Game_Choice
execute if score @s dialoguetime matches 363 run tellraw @a [{"color":"green","text":"[Weren't you looking for the Chaos Emeralds?]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to continue the conversation!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}]
execute if score @s dialoguetime matches 363 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:61}

execute if score @s dialoguetime matches 385 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I left a scanning machine running in the cave","color":"gold"}]
execute if score @s dialoguetime matches 432 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"and also made this bracelet that automatically detects nearby chaos energy!","color":"gold"}]
execute if score @s dialoguetime matches 525 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Shadow","color":"#C42626"},{"text":" is also helping me find them on his own.","color":"gold"}]
execute if score @s dialoguetime matches 582 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"He's found three already!","color":"gold"}]
execute if score @s dialoguetime matches 612 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Did you two meet?","color":"gold"}]

execute if score @s dialoguetime matches 637 run tellraw @a [{"text":"<","color":"white"},{"selector":"@r[tag=amplayer]","color":"aqua"},{"text":"> "},{"text":"...","color":"aqua"}]

execute if score @s dialoguetime matches 657 at @e[type=armor_stand,tag=tailshead,limit=1] run playsound custom.t2s.tails.act3_shadow_part2 master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 658 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I guess that means he wasn't the nicest.","color":"gold"}]
execute if score @s dialoguetime matches 658 if score @s dialogueseq matches 1 run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:52}
execute if score @s dialoguetime matches 658 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:62}
execute if score @s dialoguetime matches 705 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"He's been very angry at Among Us recently.","color":"gold"}]
execute if score @s dialoguetime matches 705 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:63}
execute if score @s dialoguetime matches 765 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"When he plays public lobbies,","color":"gold"}]
execute if score @s dialoguetime matches 797 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"he always gets voted out for having a deep voice.","color":"gold"}]
execute if score @s dialoguetime matches 852 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Since he was forced to interact with you in that crewmate suit,","color":"gold"}]
execute if score @s dialoguetime matches 915 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"he was probably taking out his stress on you.","color":"gold"}]

# Doing data merges while teleporting might cause head detachments!
# Oh well...
execute if score @s dialoguetime matches 971 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"It's not like we often get sucked into different universes...","color":"gold"}]
#execute if score @s dialoguetime matches 971 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:62}
execute if score @s dialoguetime matches 971 run tag @e[type=armor_stand,tag=tailshead,limit=1] add dontlook
execute if score @s dialoguetime matches 971 run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:62}}],Pose:{Head:[15f,20f,0f]}}
execute if score @s dialoguetime matches 1047 run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"He's a really caring person once you get to know him, though!","color":"gold"}]
execute if score @s dialoguetime matches 1047 run tag @e[type=armor_stand,tag=tailshead,limit=1] remove dontlook
execute if score @s dialoguetime matches 1047 run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:61}
execute if score @s dialoguetime matches 1047 as @e[type=armor_stand,tag=tailshead,limit=1] run function ttt:update_head_pose