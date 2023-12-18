summon item 45 21 175 {Motion:[0.1,0.25,-0.25],HasVisualFire:1b,Age:-32768,Tags:["forkill","amogtask"],Item:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Quartz","color":"white","italic":false}'}}}}
summon item 44 21 176 {Motion:[0.0,0.3,-0.35],HasVisualFire:1b,Age:-32768,Tags:["forkill","amogtask"],Item:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Quartz","color":"white","italic":false}'}}}}
summon item 47 22 177 {Motion:[0.05,0.25,-0.2],HasVisualFire:1b,Age:-32768,Tags:["forkill","amogtask"],Item:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Quartz","color":"white","italic":false}'}}}}
summon item 46 21 175 {Motion:[0.15,0.25,-0.25],HasVisualFire:1b,Age:-32768,Tags:["forkill","amogtask"],Item:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Quartz","color":"white","italic":false}'}}}}
summon item 47 21 175 {Motion:[0.1,0.25,-0.15],HasVisualFire:1b,Age:-32768,Tags:["forkill","amogtask"],Item:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Quartz","color":"white","italic":false}'}}}}
summon item 44 21 176 {Motion:[0.0,0.3,-0.3],HasVisualFire:1b,Age:-32768,Tags:["forkill","amogtask"],Item:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Quartz","color":"white","italic":false}'}}}}
summon item 46 21 176 {Motion:[-0.2,0.3,-0.3],HasVisualFire:1b,Age:-32768,Tags:["forkill","amogtask"],Item:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Quartz","color":"white","italic":false}'}}}}
summon item 43 21 174 {Motion:[-0.1,0.25,-0.25],HasVisualFire:1b,Age:-32768,Tags:["forkill","amogtask"],Item:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Quartz","color":"white","italic":false}'}}}}
summon item 42 21 175 {Motion:[0.1,0.25,-0.3],HasVisualFire:1b,Age:-32768,Tags:["forkill","amogtask"],Item:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Quartz","color":"white","italic":false}'}}}}
summon item 43 20 177 {Motion:[0.1,0.45,-0.35],HasVisualFire:1b,Age:-32768,Tags:["forkill","amogtask"],Item:{id:"minecraft:quartz",Count:1b,tag:{display:{Name:'{"text":"Quartz","color":"white","italic":false}'}}}}
particle flame 45 20.5 176 3 1 1 0 100 normal @a
particle lava 45 20.5 176 3 1 1 0 100 normal @a
particle block lava 45 20.5 176 3 1 1 0 100 normal @a
playsound block.lava.extinguish master @a 45 20.5 176 1000
playsound block.lava.extinguish master @a 45 20.5 176 1000
playsound block.lava.pop master @a 45 20.5 176 1000
scoreboard players set @s am_gamescore4 2

execute as @e[tag=tailshead] at @s run playsound custom.t2s.tails.emerald_quartz_spawn master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Woah, you're a lucky fisher!","color":"gold"}]
item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:61}
item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:56}