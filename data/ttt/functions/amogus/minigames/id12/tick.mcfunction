# am_gamescore1 == has entered store
# am_gamescore2 == has found vodka shelf
# am_gamescore3 == rick ask amount
# am_gamescore4 == has picked vodka
# am_gamescore5 == has spoken to waltuh
# am_gamescore6 == has spoken to shadow

execute if entity @a[tag=amplayer,scores={x=-27..-24,z=110}] unless entity @e[type=armor_stand,tag=use_door2] run function ttt:amogus/minigames/id4/interact_double_door
execute unless entity @a[tag=amplayer,scores={x=-27..-24,z=110}] if entity @e[type=armor_stand,tag=use_door2] run tag @e[type=armor_stand,tag=baldi] remove use_door2

execute if score @s am_gamescore1 matches 0 if entity @a[tag=amplayer,scores={z=117..}] run function ttt:amogus/minigames/id12/enter_store
execute if score @s am_gamescore2 matches 0 if entity @a[tag=amplayer,scores={x=-31,z=118..119}] run function ttt:amogus/minigames/id12/display_options
execute if score @s am_gamescore5 matches 0 if entity @a[tag=amplayer,scores={x=-38..-37,z=116..118}] if score @s am_gamescore3 matches 2.. if score @s am_gamescore4 matches 0 run function ttt:amogus/minigames/id12/cashier_correct
execute if score @s am_gamescore5 matches 0 if entity @a[tag=amplayer,scores={x=-38..-37,z=116..118}] if score @s am_gamescore4 matches 1 run function ttt:amogus/minigames/id12/cashier_wrong

execute if score @s am_gamescore5 matches 0 as @a[tag=amplayer,scores={Game_Choice=1..}] at @s run function ttt:amogus/minigames/id12/drink_get
execute if score @s am_gamescore5 matches 1 as @a[tag=amplayer,scores={Game_Choice=1..}] run scoreboard players reset @a Game_Choice
execute if score @s am_gamescore5 matches 2 as @a[tag=amplayer,scores={Game_Choice=1..}] at @s run function ttt:amogus/minigames/id12/drink_accept

particle happy_villager -31 32.5 119.0 .2 .5 .5 0 1 force @a
execute if score @s am_gamescore5 matches 1 if entity @a[tag=amplayer,scores={x=-33..,z=110..114},nbt={Inventory:[{tag:{rickdrink:1b}}]}] run function ttt:amogus/minigames/id12/rick_give_bad
execute if score @s am_gamescore5 matches 1 at @e[type=armor_stand,tag=rickhead] if entity @e[type=item,distance=..3,nbt={Item:{tag:{rickdrink:1b}}}] run function ttt:amogus/minigames/id12/rick_give_bad
execute if score @s am_gamescore5 matches 2 if entity @a[tag=amplayer,scores={x=-33..,z=110..114},nbt={Inventory:[{tag:{rickdrink:1b}}]}] run function ttt:amogus/minigames/id12/rick_give_good
execute if score @s am_gamescore5 matches 2 at @e[type=armor_stand,tag=rickhead] if entity @e[type=item,distance=..3,nbt={Item:{tag:{rickdrink:1b}}}] run function ttt:amogus/minigames/id12/rick_give_good

execute unless score @s am_gametimer matches 9999 run function ttt:amogus/minigames/id12/tick_dialogue

execute as @e[type=armor_stand,tag=npchead,tag=!shadowhead] at @s anchored eyes run function ttt:amogus/minigames/id12/npc_look_standard
execute as @e[type=armor_stand,tag=npchead,tag=shadowhead] at @s anchored eyes run function ttt:amogus/minigames/id12/npc_look_shadow

execute if entity @a[tag=amplayer,scores={x=-25..-22,z=129..132}] if score @s am_gamescore6 matches 0 run function ttt:amogus/minigames/id12/shadow_interact