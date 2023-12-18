scoreboard players add @s npcbodytp 1

execute if score @s npcbodytp matches ..17 run tp @s ~ ~ ~-0.25
execute if score @s npcbodytp matches 18..69 run tp @s ~-0.25 ~ ~
execute if score @s npcbodytp matches 70..97 run tp @s ~ ~ ~-0.25

execute if score @s npcbodytp matches 28 run function ttt:amogus/minigames/id5/ambience_principal
execute if score @s npcbodytp matches 72 run function ttt:amogus/minigames/id5/door2_open
execute if score @s npcbodytp matches 92 run function ttt:amogus/minigames/id5/door2_close

#execute if score @s npcbodytp matches 100..151 run tp @s ~ ~ ~0.25
execute if score @s npcbodytp matches 100..143 run tp @s ~ ~ ~0.25
execute if score @s npcbodytp matches 144..151 run tp @s ~-0.25 ~ ~
execute if score @s npcbodytp matches 152..167 run tp @s ~ ~ ~0.25

execute if score @s npcbodytp matches 110 run function ttt:amogus/minigames/id5/door2_open
execute if score @s npcbodytp matches 110 run function ttt:amogus/minigames/id5/ambience_principal
execute if score @s npcbodytp matches 128 run function ttt:amogus/minigames/id5/door1_open
execute if score @s npcbodytp matches 130 run function ttt:amogus/minigames/id5/door2_close
execute if score @s npcbodytp matches 148 run function ttt:amogus/minigames/id5/door1_close

execute if score @s npcbodytp matches 167 run tp @a[tag=amplayer,x=19,y=21,z=126,dx=0,dy=0,dz=0] 19 21 127
execute if score @s npcbodytp matches 167 run setblock 19 22 126 barrier