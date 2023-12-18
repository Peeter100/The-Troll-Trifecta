# RUN 15 TICKS BEFORE game_resume.mcfunction

execute as @e[type=zombie_villager,tag=amogzombai] run data merge entity @s {NoAI:0b}
execute unless score @s am_sabid matches 3 as @e[type=villager,tag=amogai,tag=!canseebody,tag=!emergencybutton] run data merge entity @s {NoAI:0b}
effect give @e[type=villager,tag=amogai] slowness 1 255 true

execute as @e[type=zombie_villager,tag=amogzombai,tag=orange] at @s run summon potion ~ ~ ~ {Silent:1b,Owner:[I;1,0,0,0],Motion:[0.0,-1.0,0.0],Tags:["forkill"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}
execute as @e[type=zombie_villager,tag=amogzombai,tag=yellow] at @s run summon potion ~ ~ ~ {Silent:1b,Owner:[I;2,0,0,0],Motion:[0.0,-1.0,0.0],Tags:["forkill"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}
execute as @e[type=zombie_villager,tag=amogzombai,tag=lime] at @s run summon potion ~ ~ ~ {Silent:1b,Owner:[I;3,0,0,0],Motion:[0.0,-1.0,0.0],Tags:["forkill"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}
execute as @e[type=zombie_villager,tag=amogzombai,tag=green] at @s run summon potion ~ ~ ~ {Silent:1b,Owner:[I;4,0,0,0],Motion:[0.0,-1.0,0.0],Tags:["forkill"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}
execute as @e[type=zombie_villager,tag=amogzombai,tag=cyan] at @s run summon potion ~ ~ ~ {Silent:1b,Owner:[I;5,0,0,0],Motion:[0.0,-1.0,0.0],Tags:["forkill"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}
execute as @e[type=zombie_villager,tag=amogzombai,tag=pink] at @s run summon potion ~ ~ ~ {Silent:1b,Owner:[I;6,0,0,0],Motion:[0.0,-1.0,0.0],Tags:["forkill"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}
execute as @e[type=zombie_villager,tag=amogzombai,tag=purple] at @s run summon potion ~ ~ ~ {Silent:1b,Owner:[I;7,0,0,0],Motion:[0.0,-1.0,0.0],Tags:["forkill"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}
execute as @e[type=zombie_villager,tag=amogzombai,tag=white] at @s run summon potion ~ ~ ~ {Silent:1b,Owner:[I;8,0,0,0],Motion:[0.0,-1.0,0.0],Tags:["forkill"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}
execute as @e[type=zombie_villager,tag=amogzombai,tag=black] at @s run summon potion ~ ~ ~ {Silent:1b,Owner:[I;9,0,0,0],Motion:[0.0,-1.0,0.0],Tags:["forkill"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}

schedule function ttt:amogus/prepare_zombai_teleport 10t replace