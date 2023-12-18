scoreboard players add @s[scores={am_gamescore5=1..999}] am_gamescore5 1
#execute as @e[tag=susman] at @s run tp @s ~ ~ ~ facing entity @p[tag=amplayer] eyes

#execute if entity @s[scores={am_gamescore5=0}] if entity @a[tag=amplayer,scores={z=..89}] run scoreboard players set @s am_gamescore5 1
#execute if entity @s[scores={am_gamescore5=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Blue","color":"#1155AA"},{"text":"> "},{"text":"Don't tell anyone I'm here, ","color":"#1155AA"},{"text":"Red","color":"red"},{"text":".","color":"#1155AA"}]
#execute if entity @s[scores={am_gamescore5=1}] as @e[tag=susman] at @s run playsound custom.amogus.text master @a ~ ~ ~

#execute if entity @s[scores={am_gamescore5=15}] run stopsound @a master custom.amogus.text

#execute if entity @s[scores={am_gamescore5=60}] run tellraw @a [{"text":"<","color":"white"},{"text":"Blue","color":"#1155AA"},{"text":"> "},{"text":"I managed to get out of the game, but I don't know for how long.","color":"#1155AA"}]
#execute if entity @s[scores={am_gamescore5=60}] as @e[tag=susman] at @s run playsound custom.amogus.text master @a ~ ~ ~

#execute if entity @s[scores={am_gamescore5=160}] run tellraw @a [{"text":"<","color":"white"},{"text":"Blue","color":"#1155AA"},{"text":"> "},{"text":"A tournament where people actually die is usually not worth it.","color":"#1155AA"}]
#execute if entity @s[scores={am_gamescore5=160}] as @e[tag=susman] at @s run playsound custom.amogus.text master @a ~ ~ ~

#execute if entity @s[scores={am_gamescore5=260}] run tellraw @a [{"text":"<","color":"white"},{"text":"Blue","color":"#1155AA"},{"text":"> "},{"text":"This also reminds me of a game made for cephalopods that shoot ink.","color":"#1155AA"}]
#execute if entity @s[scores={am_gamescore5=260}] as @e[tag=susman] at @s run playsound custom.amogus.text master @a ~ ~ ~

#execute if entity @s[scores={am_gamescore5=360}] run tellraw @a [{"text":"<","color":"white"},{"text":"Blue","color":"#1155AA"},{"text":"> "},{"text":"Scary stuff.","color":"#1155AA"}]
#execute if entity @s[scores={am_gamescore5=360}] as @e[tag=susman] at @s run playsound custom.amogus.text master @a ~ ~ ~

#execute if entity @s[scores={am_gamescore5=365}] run stopsound @a master custom.amogus.text

execute if entity @a[tag=amplayer,scores={x=28..32,y=31..32,z=84..88}] positioned 30 32 86 unless entity @s[scores={d6=1}] run function ttt:diamond_hunt/d6