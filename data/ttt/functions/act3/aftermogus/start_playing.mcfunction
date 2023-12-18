gamemode adventure @a[team=p]
#tag @a[team=p] remove amplayer
tp @a -3 30 209 0 0
scoreboard players set @a x -3
scoreboard players set @a y 30
scoreboard players set @a z 209
title @a reset
title @a clear

playsound custom.t2s.tails.act3_congrats master @a -3 30 209 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Hey, Minecrafter!","color":"gold"}]
give @r[tag=amplayer] stone_button{display:{Name:'{"text":"Stone Button","color":"white","italic":false}',Lore:['[{"text":"Can be placed on a ","color":"gray","italic":false},{"text":"gold block","color":"yellow"},{"text":"."}]']}} 1
setblock -2 31 255 air
setblock -3 31 256 air
setblock -4 31 255 air
setblock -3 31 254 air
setblock -3 32 255 air

scoreboard players set @s dialogueseq 1
scoreboard players set @s dialoguetime 0