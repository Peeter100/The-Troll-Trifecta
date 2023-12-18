#execute if entity @a[x=-1,y=35,z=8,dx=2,dy=1,dz=2,team=p,scores={hp=1..}] unless score @s deathtime matches 3347.. run scoreboard players add @s deathtime 1
execute if score @s deathtime matches 2.. run scoreboard players add @s deathtime 1
execute if score @s deathtime matches ..1 run function ttt:tick_dead_waiting

scoreboard players set @a death 0
effect give @a invisibility 1 0 true
execute if entity @s[scores={deathtime=3..48}] run effect give @a blindness 3 0 true

execute as @a[tag=!testing,team=!s] at @s if entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run clear @s
execute as @a[tag=!testing,team=!s] at @s if entity @s[x=-6,y=30,z=-6,dx=13,dy=4,dz=13] run tp @s 0 35 9

execute if entity @s[scores={deathtime=2,act=2},tag=hijackdeathseq] run scoreboard players set @s deathtime 1000
execute if entity @s[scores={deathtime=2,act=3},tag=hijackdeathseq] run scoreboard players set @s deathtime 2000
execute if entity @s[scores={deathtime=1000..1999}] run function ttt:tick_act2_deathseq
execute if entity @s[scores={deathtime=2000..}] run function ttt:tick_act3_deathseq

execute if entity @s[scores={deathtime=3}] run scoreboard players enable @a[team=p] Main_Menu
execute if entity @s[scores={deathtime=3}] run function ttt:map_reset
execute if entity @s[scores={deathtime=3..40,playercount=1}] run scoreboard players set @s deathtime 41
execute if entity @s[scores={deathtime=3..20,playercount=2..}] run scoreboard players set @s deathtime 21
execute if entity @s[scores={deathtime=41}] run tellraw @a [{"text":"[CANCEL]","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to go back to the main menu!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Main_Menu"}},{"text":" Auto-retrying in ","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green","italic":false}]}},{"text":"3","color":"yellow","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green","italic":false}]}},{"text":"...","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green","italic":false}]}}]
execute if entity @s[scores={deathtime=56}] run tellraw @a [{"text":"[CANCEL]","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to go back to the main menu!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Main_Menu"}},{"text":" Auto-retrying in ","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green","italic":false}]}},{"text":"2","color":"yellow","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green","italic":false}]}},{"text":"...","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green","italic":false}]}}]
execute if entity @s[scores={deathtime=71}] run tellraw @a [{"text":"[CANCEL]","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to go back to the main menu!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Main_Menu"}},{"text":" Auto-retrying in ","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green","italic":false}]}},{"text":"1","color":"yellow","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green","italic":false}]}},{"text":"...","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green","italic":false}]}}]
execute if entity @s[scores={deathtime=41}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 0.9
execute if entity @s[scores={deathtime=56}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 0.9
execute if entity @s[scores={deathtime=71}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 0.9

execute if entity @s[scores={deathtime=85}] as @a[tag=!testing,team=!s] at @s unless entity @s[x=-1,y=35,z=8,dx=2,dy=1,dz=2] run tp @s 0 35 9

execute if entity @s[scores={deathtime=86}] run scoreboard players reset @a Main_Menu
execute if entity @s[scores={deathtime=86,act=3,actpart=4..}] run scoreboard players set @s actpart 1
execute if entity @s[scores={deathtime=86}] run function ttt:map_respawn

execute as @a[scores={Main_Menu=1..}] run tellraw @a [{"text":"Game retry cancelled by ","color":"green"},{"selector":"@s","color":"green"}]
execute if entity @a[scores={Main_Menu=1..}] run function ttt:map_stop
execute if entity @a[scores={Main_Menu=1..}] run scoreboard players reset @a Main_Menu