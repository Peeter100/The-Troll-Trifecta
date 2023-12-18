summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Tags:["forkill"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","color":"yellow","italic":false}'}}}}
summon item ~ ~ ~ {Motion:[0.3,0.15,0.0],Tags:["forkill"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","color":"yellow","italic":false}'}}}}
summon item ~ ~ ~ {Motion:[-0.3,0.15,0.0],Tags:["forkill"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","color":"yellow","italic":false}'}}}}
summon item ~ ~ ~ {Motion:[0.0,0.15,0.3],Tags:["forkill"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","color":"yellow","italic":false}'}}}}
summon item ~ ~ ~ {Motion:[0.0,0.15,-0.3],Tags:["forkill"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","color":"yellow","italic":false}'}}}}
summon item ~ ~ ~ {Motion:[0.15,0.15,0.15],Tags:["forkill"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","color":"yellow","italic":false}'}}}}
summon item ~ ~ ~ {Motion:[0.15,0.15,-0.15],Tags:["forkill"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","color":"yellow","italic":false}'}}}}
summon item ~ ~ ~ {Motion:[-0.15,0.15,0.0],Tags:["forkill"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","color":"yellow","italic":false}'}}}}
summon item ~ ~ ~ {Motion:[-0.15,0.15,-0.15],Tags:["forkill"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Ingot","color":"yellow","italic":false}'}}}}

playsound block.stone.break master @a ~ ~ ~
playsound block.stone.break master @a ~ ~ ~
particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force @a
kill @s