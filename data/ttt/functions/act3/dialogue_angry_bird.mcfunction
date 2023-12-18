execute unless entity @e[tag=bird] run scoreboard players add @s dialoguetime 1

execute as @e[tag=bird] at @s run function ttt:act3/angry_bird_fly
execute as @e[tag=bird] at @s run function ttt:act3/angry_bird_fly
execute as @e[tag=bird] at @s run function ttt:act3/angry_bird_fly
execute as @e[tag=bird] at @s run function ttt:act3/angry_bird_fly
execute as @e[tag=bird] at @s run function ttt:act3/angry_bird_fly

execute if entity @s[scores={dialoguetime=40}] run tag @s add silentdeath
execute if entity @s[scores={dialoguetime=40}] run execute as @r[team=p] at @s run playsound custom.act3.angry_birds.epic_fail master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=40}] run scoreboard players set @s am_maintimer 0
execute if entity @s[scores={dialoguetime=40}] run execute as @e[type=piglin] at @s run scoreboard players add @e[tag=sv] am_maintimer 1
execute if entity @s[scores={dialoguetime=40}] run execute as @e[type=hoglin] at @s run scoreboard players add @e[tag=sv] am_maintimer 1
execute if entity @s[scores={dialoguetime=40}] run tellraw @a [{"text":"Game over! You missed ","color":"yellow"},{"score":{"name":"@s","objective":"am_maintimer"},"color":"green"},{"text":" pigs","color":"green"},{"text":"!"}]
execute if entity @s[scores={dialoguetime=40}] run scoreboard players set @a[team=p] deathreason 42
execute if entity @s[scores={dialoguetime=40}] run kill @r[team=p]