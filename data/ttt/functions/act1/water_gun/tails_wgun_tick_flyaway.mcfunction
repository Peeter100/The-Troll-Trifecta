#execute if score @s dialoguetime matches 552..595 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.15 ~0.25 ~0.3 -38 0
#execute if score @s dialoguetime matches 596..614 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~0.2 ~0.2 -55 0
#execute if score @s dialoguetime matches 615..650 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~-0.2 ~0.2 -55 0

execute if score @s dialoguetime matches 552..592 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.15 ~0.25 ~0.3 -38 0
execute if score @s dialoguetime matches 593 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.17 ~0.23 ~0.27 -41 0
execute if score @s dialoguetime matches 594 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.2 ~0.22 ~0.24 -46 0
execute if score @s dialoguetime matches 595 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.23 ~0.21 ~0.22 -51 0
execute if score @s dialoguetime matches 596..608 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~0.2 ~0.2 -55 0
execute if score @s dialoguetime matches 609 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~0.16 ~0.2 -55 0
execute if score @s dialoguetime matches 610 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~0.11 ~0.2 -55 0
execute if score @s dialoguetime matches 611 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~0.03 ~0.2 -55 0
execute if score @s dialoguetime matches 612 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~-0.06 ~0.2 -55 0
execute if score @s dialoguetime matches 613 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~-0.1 ~0.2 -55 0
execute if score @s dialoguetime matches 614 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~-0.15 ~0.2 -55 0
execute if score @s dialoguetime matches 615..650 as @e[type=armor_stand,tag=tails] at @s run tp @s ~0.25 ~-0.2 ~0.2 -55 0

execute if score @s dialoguetime matches 651 run kill @e[type=armor_stand,tag=tails]
execute if score @s dialoguetime matches 651 run scoreboard players set @s dialoguetime 750