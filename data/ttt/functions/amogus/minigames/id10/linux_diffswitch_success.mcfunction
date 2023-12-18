scoreboard players operation @s am_gamescore4 = @s am_gametimer
scoreboard players operation @s am_gamescore4 %= @s am_secondworth

tellraw @a {"text":"Enabled Speedrun Mode!","color":"yellow"}
execute at @r[tag=amplayer] run playsound minecraft:block.wooden_button.click_on master @a ~ ~ ~
execute at @r[tag=amplayer] run playsound block.note_block.pling master @a ~ ~ ~ 1000 2
scoreboard players set @s am_gamescore1 1
scoreboard players set @s am_gametimer 2080
tag @e[type=marker,tag=fnafhost] add hardmode
scoreboard players set @s am_gamescore5 3
tp @e[type=chest_minecart,tag=linux] -24 0 97.55 90 0

# am_gamescore4 --> 0-19
data merge entity @e[type=chest_minecart,tag=linux,limit=1] {CustomName:'{"text":"Arch Linux","italic":false}',Items:[{Slot:0b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:1b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:2b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:3b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:4b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:5b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:6b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:7b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:8b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:9b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:10b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:11b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:12b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:13b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:14b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:15b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:16b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:17b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:18b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:19b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:20b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:21b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:22b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:23b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:24b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:25b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}},{Slot:26b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" "}'},req:1b,locked:1b}}]}
execute if entity @s[scores={am_gamescore4=0}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.3 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=1}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.4 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=2}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.5 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=3}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.6 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=4}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.7 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=5}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.8 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=6}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.9 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=7}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.10 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=8}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.11 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=9}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.12 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=10}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.14 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=11}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.15 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=12}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.16 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=13}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.17 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=14}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.18 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=15}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.19 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=16}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.20 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=17}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.21 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=18}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.22 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1
execute if entity @s[scores={am_gamescore4=19}] run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.23 with red_dye{display:{Name:'{"text":"Click!","color":"green","italic":false}'},req:1b,button:1b,locked:1b} 1