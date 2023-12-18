execute if score @s dialoguetime matches 1.. run scoreboard players add @s dialoguetime 1
execute if score @s dialoguetime matches 0 if entity @a[team=p,scores={x=8..17,y=18..22,z=191..200}] run scoreboard players add @s dialoguetime 1

execute if score @s dialoguetime matches 1 run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"oh hi kid","color":"#C4E2FF","font":"sans"}]
execute if score @s dialoguetime matches 1 at @e[type=armor_stand,tag=sanshead] run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if score @s dialoguetime matches 30 run tellraw @a [{"text":"<"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Wait, did you seriously find us?","color":"gold"}]
execute if score @s dialoguetime matches 30 at @e[type=armor_stand,tag=p100head] run playsound custom.act3.va.sansroom1 master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 30 run tag @e[type=armor_stand,tag=p100head] add namednpc
execute if score @s dialoguetime matches 30 run kill @e[type=armor_stand,tag=p100head2]
execute if score @s dialoguetime matches 30 run data merge entity @e[type=armor_stand,tag=p100body,limit=1] {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:8}},{}],ArmorItems:[{},{},{},{}]}
execute if score @s dialoguetime matches 30 run item replace entity @e[type=armor_stand,tag=p100head] armor.head with emerald{CustomModelData:3}
execute if score @s dialoguetime matches 30 run tp @e[type=armor_stand,tag=p100sansroom] 12 20 194

execute if score @s dialoguetime matches 35 run tag @e[type=armor_stand,tag=p100head] add sansroomhead

execute if score @s dialoguetime matches 73 run tellraw @a [{"text":"<"},{"text":"Mr_Jag","color":"#A138C4"},{"text":"> "},{"text":"Is there no place in this map that's hidden?","color":"#A138C4"}]

execute if score @s dialoguetime matches 123 run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"you must've worked really hard to get here","color":"#C4E2FF","font":"sans"}]
execute if score @s dialoguetime matches 123 at @e[type=armor_stand,tag=sanshead] run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if score @s dialoguetime matches 180 run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"how about-","color":"#C4E2FF","font":"sans"}]
execute if score @s dialoguetime matches 180 at @e[type=armor_stand,tag=sanshead] run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if score @s dialoguetime matches 190 run tag @e[type=armor_stand,tag=p100head] add donttphead
execute if score @s dialoguetime matches 190 as @e[type=armor_stand,tag=p100head] at @s run tp @s ~ ~ ~ 0 0
execute if score @s dialoguetime matches 190 run tellraw @a [{"text":"<"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"NO!","color":"gold"}]
execute if score @s dialoguetime matches 190 at @e[type=armor_stand,tag=p100head] run playsound custom.act3.va.sansroom2 master @a ~ ~ ~ 1000

execute if score @s dialoguetime matches 206 run tellraw @a [{"text":"<"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You already helped them enough!","color":"gold"}]
execute if score @s dialoguetime matches 239 run tellraw @a [{"text":"<"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"That arrow puzzle had a WAY more intricate solution","color":"gold"}]
execute if score @s dialoguetime matches 304 run tellraw @a [{"text":"<"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"and you just had to ruin it, didn't you?","color":"gold"}]

execute if score @s dialoguetime matches 360 run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"at least the tournament will be more fun heh heh","color":"#C4E2FF","font":"sans"}]
execute if score @s dialoguetime matches 360 at @e[type=armor_stand,tag=sanshead] run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if score @s dialoguetime matches 420 run tellraw @a [{"text":"<"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"What-?","color":"gold"}]
execute if score @s dialoguetime matches 420 at @e[type=armor_stand,tag=p100head] run playsound custom.act3.va.sansroom3 master @a ~ ~ ~ 1000

execute if score @s dialoguetime matches 434 run tag @e[type=armor_stand,tag=jaghead] add donttphead
execute if score @s dialoguetime matches 434 as @e[type=armor_stand,tag=jaghead] at @s run tp @s ~ ~ ~ -45 0
execute if score @s dialoguetime matches 434 as @e[type=armor_stand,tag=p100head] at @s run tp @s ~ ~ ~ 45 0
execute if score @s dialoguetime matches 434 run tellraw @a [{"text":"<"},{"text":"Mr_Jag","color":"#A138C4"},{"text":"> "},{"text":"As long as the player has fun","color":"#A138C4"}]
execute if score @s dialoguetime matches 462 run tellraw @a [{"text":"<"},{"text":"Mr_Jag","color":"#A138C4"},{"text":"> "},{"text":"and sees more of the map,","color":"#A138C4"}]
execute if score @s dialoguetime matches 486 run tellraw @a [{"text":"<"},{"text":"Mr_Jag","color":"#A138C4"},{"text":"> "},{"text":"that's all that matters!","color":"#A138C4"}]
execute if score @s dialoguetime matches 515 run tellraw @a [{"text":"<"},{"text":"Mr_Jag","color":"#A138C4"},{"text":"> "},{"text":"The puzzle you made was probably very annoying anyway.","color":"#A138C4"}]
execute if score @s dialoguetime matches 563 run tag @e[type=armor_stand,tag=sansroomhead] remove donttphead
execute if score @s dialoguetime matches 563 run tellraw @a [{"text":"<"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Alright, alright!","color":"gold"}]
execute if score @s dialoguetime matches 590 run tellraw @a [{"text":"<"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Let's not think out loud.","color":"gold"}]
execute if score @s dialoguetime matches 618 run tellraw @a [{"text":"<"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"We'll... talk later.","color":"gold"}]

execute unless score @s dialoguetime matches 0 as @e[type=armor_stand,tag=sansroomhead,tag=!donttphead] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p] eyes
execute unless score @s dialoguetime matches 0 as @e[type=armor_stand,tag=sansroomhead] run function ttt:update_head_pose
scoreboard players add @e[type=armor_stand,tag=sansroomhead,tag=!donttpbody] npcbodytp 1
execute as @e[type=armor_stand,tag=sansroomhead,scores={npcbodytp=10..}] at @s run tp @e[type=armor_stand,tag=sansroombody,distance=..1] @s
scoreboard players set @e[type=armor_stand,tag=sansroomhead,scores={npcbodytp=10..}] npcbodytp 0

# Can occur while rain (which means dialogueseq=3) so moved to tick
#execute if entity @a[team=p,scores={x=5..6,y=18..21,z=200..204}] positioned 6 20 203 unless entity @s[scores={d4=1}] run function ttt:diamond_hunt/d4