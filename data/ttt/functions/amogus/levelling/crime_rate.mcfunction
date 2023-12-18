scoreboard players set @s am_lvl_addon 200
execute if entity @e[type=villager,tag=amogai,tag=emergencybutton] run scoreboard players set @s am_lvl_addon 0
execute as @e[type=villager,tag=amogai] run function ttt:amogus/levelling/crime_rate_per_crewmate
execute if score @s am_ventid matches 0 at @r[tag=amplayer] at @e[type=villager,tag=amogai,distance=..20] run scoreboard players remove @s am_lvl_addon 10

execute if score @s am_lvl_addon matches ..-1 run scoreboard players set @s am_lvl_addon 0

scoreboard players add @s am_level 1
scoreboard players operation @s am_lvl_xp += @s am_lvl_addon

#scoreboard players set @s am_lvl_uniquereq 0
#execute if score @s am_level matches 3..4 run scoreboard players set @s am_lvl_uniquereq 1
#execute if score @s am_level matches 5 run scoreboard players set @s am_lvl_uniquereq 2
#execute if score @s am_level matches 6..7 run scoreboard players set @s am_lvl_uniquereq 3
#execute if score @s am_level matches 8 run scoreboard players set @s am_lvl_uniquereq 4
#execute if score @s am_level matches 9 run scoreboard players set @s am_lvl_uniquereq 5
#execute if score @s am_level matches 10.. run scoreboard players set @s am_lvl_uniquereq 6

scoreboard players set @s am_lvl_uniquereq -2
scoreboard players operation @s am_lvl_uniquereq += @s am_level

execute if score @s am_lvl_addon matches ..99 run tellraw @a [{"text":">> Kill too obvious!","color":"red","bold":true},{"text":" +","bold":false},{"score":{"name":"@s","objective":"am_lvl_addon"},"color":"#FF0000","bold":false},{"text":" IXP","bold":false}]
execute if score @s am_lvl_addon matches 100..149 run tellraw @a [{"text":">> Kill!","color":"red","bold":true},{"text":" +","bold":false},{"score":{"name":"@s","objective":"am_lvl_addon"},"color":"#FF0000","bold":false},{"text":" IXP","bold":false}]
execute if score @s am_lvl_addon matches 150..199 run tellraw @a [{"text":">> Good kill!","color":"red","bold":true},{"text":" +","bold":false},{"score":{"name":"@s","objective":"am_lvl_addon"},"color":"#FF0000","bold":false},{"text":" IXP","bold":false}]
execute if score @s am_lvl_addon matches 200.. run tellraw @a [{"text":">> PERFECT KILL!","color":"red","bold":true},{"text":" +","bold":false},{"score":{"name":"@s","objective":"am_lvl_addon"},"color":"#FF0000","bold":false},{"text":" IXP","bold":false}]

execute if score @s am_lvl_xp < @s am_lvl_xpreq run function ttt:amogus/levelling/levelup_fail
execute if score @s am_lvl_xp >= @s am_lvl_xpreq if score @s am_lvl_unique < @s am_lvl_uniquereq run function ttt:amogus/levelling/levelup_fail
execute if score @s am_lvl_xp >= @s am_lvl_xpreq if score @s am_lvl_unique >= @s am_lvl_uniquereq run function ttt:amogus/levelling/levelup

tag @e[type=armor_stand,tag=amogdeadnotleveled] remove amogdeadnotleveled