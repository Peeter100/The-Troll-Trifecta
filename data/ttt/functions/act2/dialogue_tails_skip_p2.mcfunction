execute if score @s dialoguetime matches 555..559 if entity @a[team=p,nbt={Inventory:[{Slot:100b,tag:{tailsshoes:1b}},{tag:{hoverwand:1b}}]}] at @e[type=armor_stand,tag=tailshead] run function ttt:act2/tails_give_shoes
execute if score @s dialoguetime matches 555..717 as @e[type=armor_stand,tag=tailshead] at @s anchored eyes run function ttt:act2/tails_look_nearest

#execute if score @s dialoguetime matches 720..739 as @e[type=armor_stand,tag=tails] at @s run tp @s ~-0.025 ~0.125 ~0.2 0 0
#execute if score @s dialoguetime matches 740..759 as @e[type=armor_stand,tag=tails] at @s run tp @s ~-0.025 ~0.375 ~0.15 -2 0
#execute if score @s dialoguetime matches 760..779 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.05 ~0.25 ~0.25 -5 0
execute if score @s dialoguetime matches 720..723 as @e[type=armor_stand,tag=tails] at @s run tp @s ~ ~0.125 ~ facing entity @p[team=p]
execute if score @s dialoguetime matches 724..726 as @e[type=armor_stand,tag=tails] at @s run tp @s ~ ~0.25 ~ facing entity @p[team=p]
execute if score @s dialoguetime matches 727..745 as @e[type=armor_stand,tag=tails] at @s run tp @s ~ ~0.375 ~ facing entity @p[team=p]
execute if score @s dialoguetime matches 746..779 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.15 ~0.125 ~0.375 -5 0
execute if score @s dialoguetime matches 780 run kill @e[type=armor_stand,tag=tails]
execute if score @s dialoguetime matches 780 run schedule clear ttt:act2/tails_fly_loop
execute if score @s dialoguetime matches 780 run scoreboard players set @s dialogueseq 0


execute if score @s dialoguetime matches 550 at @e[type=armor_stand,tag=tailshead] run playsound custom.t2s.tails.wand_shoes_ask master @a ~ ~ ~ 1000
execute if score @s dialoguetime matches 550 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Here, can you try these on?","color":"gold"}]
execute if score @s dialoguetime matches 550 run summon item -34 32 0 {Age:-32768,PickupDelay:20,Health:100,Invulnerable:1b,Motion:[0.15,0.0,0.0],Tags:["forkill"],Item:{id:"minecraft:diamond_boots",Count:1b,tag:{display:{Name:'{"text":"Tails\' Snow Hikes","color":"yellow","italic":false}',Lore:['[{"text":"When powered by an ","color":"gray","italic":false},{"text":"Ice Hover Wand","color":"light_purple"}]','[{"text":"in your inventory, gives ","color":"gray","italic":false},{"text":"Jump Boost II","color":"green"}]','[{"text":"whenever standing on a ","color":"gray","italic":false},{"text":"snow block","color":"white"},{"text":"."}]','{"text":" "}','{"text":"Always neutralizes all fall damage,","color":"gray","italic":false}','{"text":"allowing the wearer to jump from any height.","color":"gray","italic":false}']},HideFlags:39,Unbreakable:1b,tailsshoes:1b,Enchantments:[{}]}}}
execute if score @s dialoguetime matches 550 run summon item -34 32 0 {Age:-32768,PickupDelay:20,Health:100,Invulnerable:1b,Motion:[0.15,0.0,0.0],Tags:["forkill"],Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Hold-Trigger Hover Wand","color":"light_purple","italic":false}',Lore:['{"text":"While holding this wand, you will not be affected","color":"gray","italic":false}','[{"text":"by ","color":"gray","italic":false},{"text":"gravity","color":"yellow"},{"text":" as long as you have enough "},{"text":"energy","color":"light_purple"},{"text":"."}]','{"text":"Energy can be restored by standing","color":"gray","italic":false}','[{"text":"on the ground while ","color":"gray","italic":false},{"text":"NOT","color":"red"},{"text":" holding the wand."}]','{"text":" "}','{"text":"TIP: Switch to the wand immediately after","color":"red","italic":false}','{"text":"jumping to jump slightly higher!","color":"red","italic":false}']},HideFlags:3,CustomModelData:1,hoverwand:1b,Enchantments:[{}]}}}

execute if score @s dialoguetime matches 559 run scoreboard players set @s dialoguetime 558

execute if score @s dialoguetime matches 580 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"You can keep them,","color":"gold"}]
execute if score @s dialoguetime matches 594 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I can reach any place by flying just fine.","color":"gold"}]
execute if score @s dialoguetime matches 655 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I need to focus on finding a way back to my universe.","color":"gold"}]
execute if score @s dialoguetime matches 720 run tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Good luck on your adventures, Minecrafter!","color":"gold"}]