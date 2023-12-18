scoreboard players set @a death 0
scoreboard players set @s actpart 1
execute store result score @s readycount if entity @a[scores={ready=1..}]

#execute as @a[tag=!testing] at @s unless entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run tp @s 0 30 0

title @a[team=base] actionbar {"text":"Please join a team!","color":"green"}
execute as @a[gamemode=!spectator,tag=!testing] at @s if block ~ ~ ~ #ttt:water_hotgroup run function ttt:lobby/become_spectator
execute as @a[gamemode=spectator,tag=!testing] at @s if block ~ ~ ~ #ttt:passable if entity @s[x=-67,y=31.5,z=-24,dx=21,dy=2,dz=11] run function ttt:lobby/become_adventurer

execute as @a[team=!p] at @s if block ~ ~-1 ~ light_blue_concrete run title @s actionbar {"text":"Joined the player team!","color":"aqua"}
execute as @a[team=!p] at @s if block ~ ~-1 ~ light_blue_concrete run team join p @s

execute as @a[team=!s] at @s if block ~ ~-1 ~ light_gray_concrete run title @s actionbar {"text":"Joined the spectators!","color":"gray"}
execute as @a[team=!s] at @s if block ~ ~-1 ~ light_gray_concrete run team join s @s

execute as @a[scores={rc=1..}] at @s run function ttt:lobby/player_trigger/rc
execute as @a[scores={Lobby_Trigger=1..}] at @s run function ttt:lobby/lobbytrigger

#execute as @a[tag=!testing] if entity @s[nbt=!{Inventory:[{Slot:8b,tag:{readyicon:1b}}]}] run clear @s carrot_on_a_stick{readyicon:1b}
#execute as @a[scores={ready=0},tag=!testing] if entity @s[nbt=!{Inventory:[{Slot:8b,tag:{readyicon:1b}}]}] run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"[-] Not Ready","color":"gray","italic":false}',Lore:['{"text":"Right-Click to ready/unready.","color":"#666666","italic":false}']},CustomModelData:2,locked:1b,readyicon:1b} 1
#execute as @a[scores={ready=1},tag=!testing] if entity @s[nbt=!{Inventory:[{Slot:8b,tag:{readyicon:1b}}]}] run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"[✔] Ready","color":"green","italic":false}',Lore:['{"text":"Right-Click to ready/unready.","color":"#666666","italic":false}']},CustomModelData:1,locked:1b,readyicon:1b} 1

execute as @a[tag=!testing] unless entity @s[nbt={Inventory:[{Slot:8b,tag:{readyicon:1b}}]}] run function ttt:lobby/itemset1
execute if score @s actunlocked matches 4.. as @a[tag=!testing] unless entity @s[nbt={Inventory:[{tag:{boook:1b}}]}] run function ttt:lobby/itemset2

execute if entity @s[scores={totalcount=0,readytimer=5..}] run tellraw @a {"text":"Game start cancelled!","color":"red"}
execute if entity @s[scores={totalcount=0}] run scoreboard players set @s readytimer 0
execute if entity @s[scores={playercount=0,readytimer=5..}] run tellraw @a {"text":"Game start cancelled!","color":"red"}
execute if entity @s[scores={playercount=0}] run scoreboard players set @s readytimer 0
execute if entity @s[scores={readytimer=5..}] if score @s readycount < @s totalcount run tellraw @a {"text":"Game start cancelled!","color":"red"}
execute if score @s readycount < @s totalcount run scoreboard players set @s readytimer 0
execute if score @s readycount = @s totalcount run scoreboard players add @s readytimer 1
execute if entity @s[scores={readytimer=5,totalcount=2..}] run tellraw @a [{"text":"WARNING: ","color":"red","bold":true},{"text":"Although supported, playing on multiplayer is not recommended as it might introduce weird bugs related to server and client de-syncing!","bold":false}]
execute if entity @s[scores={readytimer=5}] run tellraw @a [{"text":"Starting the game in ","color":"yellow"},{"text":"10","color":"green"},{"text":" seconds!"}]
execute if entity @s[scores={readytimer=5}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 0.9
execute if entity @s[scores={readytimer=105}] run tellraw @a [{"text":"Starting the game in ","color":"yellow"},{"text":"5","color":"green"},{"text":" seconds!"}]
execute if entity @s[scores={readytimer=105}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.7
execute if entity @s[scores={readytimer=125}] run tellraw @a [{"text":"Starting the game in ","color":"yellow"},{"text":"4","color":"yellow"},{"text":" seconds!"}]
execute if entity @s[scores={readytimer=125}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.7
execute if entity @s[scores={readytimer=145}] run tellraw @a [{"text":"Starting the game in ","color":"yellow"},{"text":"3","color":"gold"},{"text":" seconds!"}]
execute if entity @s[scores={readytimer=145}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.7
execute if entity @s[scores={readytimer=165}] run tellraw @a [{"text":"Starting the game in ","color":"yellow"},{"text":"2","color":"red"},{"text":" seconds!"}]
execute if entity @s[scores={readytimer=165}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.7
execute if entity @s[scores={readytimer=185}] run tellraw @a [{"text":"Starting the game in ","color":"yellow"},{"text":"1","color":"red"},{"text":" second!"}]
execute if entity @s[scores={readytimer=185}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.7
execute if entity @s[scores={readytimer=205}] run function ttt:map_start