setblock -24 22 100 lever[face=floor,facing=south,powered=false]
setblock -22 22 98 lever[face=floor,facing=east,powered=false]
setblock -26 22 98 lever[face=floor,facing=west,powered=false]
setblock -23 22 98 air
setblock -25 22 98 air
setblock -24 22 99 air
fill -25 26 98 -23 26 99 minecraft:stone
fill -26 26 105 -22 26 105 minecraft:stone
fill -26 26 109 -22 26 109 minecraft:stone
fill -25 26 112 -23 26 112 minecraft:stone
scoreboard players set @s am_gametimer 2140

tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Install a web broswer on Linux!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Disabled","color":"red","italic":true}]
execute as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute as @r[tag=amplayer] at @s run playsound custom.act3.fnaf.door master @a ~ ~ ~ 0.75
execute as @r[tag=amplayer] at @s run playsound custom.act3.fnaf.blackout master @a ~ ~ ~ 0.4
item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.12 with red_dye{display:{Name:'{"text":"Normal Mode","color":"green","italic":false}',Lore:['[{"text":"Requires ","color":"gray","italic":false},{"text":"400 Commands","color":"green"},{"text":"."}]','{"text":"Standard difficulty setting.","color":"gray","italic":false}','{"text":" "}','{"text":"Click to start!","color":"green","italic":false}']},req:1b,button:1b,locked:1b} 1
#execute if score @s am_beatfnaf matches ..0 run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.14 with gray_dye{display:{Name:'{"text":"Speedrun Mode","color":"yellow","italic":false}',Lore:['[{"text":"- reduces ","color":"gray","italic":false},{"text":"Command","color":"green"},{"text":" requirement from "},{"text":"400","color":"green"},{"text":" to "},{"text":"125","color":"green"}]','{"text":"- animatronics move a lot faster","color":"gray","italic":false}','{"text":"- power runs out a lot faster","color":"gray","italic":false}','{"text":" "}','{"text":"[X] Beat Normal Mode at least once to unlock!","color":"red","italic":false}']},req:1b,diff:1b,locked:1b} 1
#execute if score @s am_beatfnaf matches 1.. run item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.14 with clock{display:{Name:'{"text":"Speedrun Mode","color":"yellow","italic":false}',Lore:['[{"text":"- reduces ","color":"gray","italic":false},{"text":"Command","color":"green"},{"text":" requirement from "},{"text":"400","color":"green"},{"text":" to "},{"text":"125","color":"green"}]','{"text":"- animatronics move a lot faster","color":"gray","italic":false}','{"text":"- power runs out a lot faster","color":"gray","italic":false}','{"text":" "}','{"text":"Click to start!","color":"green","italic":false}']},req:1b,diff:1b,locked:1b} 1
item replace entity @e[type=chest_minecart,tag=linux,limit=1] container.14 with clock{display:{Name:'{"text":"Speedrun Mode","color":"yellow","italic":false}',Lore:['[{"text":"- reduces ","color":"gray","italic":false},{"text":"Command","color":"green"},{"text":" requirement from "},{"text":"400","color":"green"},{"text":" to "},{"text":"125","color":"green"}]','{"text":"- animatronics move a lot faster","color":"gray","italic":false}','{"text":"- power runs out a lot faster","color":"gray","italic":false}','{"text":" "}','{"text":"[!] Not recommended for first-time players!","color":"red","italic":false}','{"text":" "}','{"text":"Click to start!","color":"green","italic":false}']},req:1b,diff:1b,locked:1b} 1
function ttt:amogus/minigames/id10/play_ambience

fill -19 21 97 -19 23 99 air
fill -29 21 97 -29 23 99 air