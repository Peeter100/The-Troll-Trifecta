execute if entity @s[scores={acttimer=2..10}] if block 0 30 49 oak_log run summon item 0 30 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if entity @s[scores={acttimer=2..10}] if block 0 30 49 oak_log run setblock 0 30 49 air destroy
execute if entity @s[scores={acttimer=4..10}] if block 0 31 49 oak_log run summon item 0 31 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if entity @s[scores={acttimer=4..10}] if block 0 31 49 oak_log run setblock 0 31 49 air destroy
execute if entity @s[scores={acttimer=6..10}] if block 0 32 49 oak_log run summon item 0 32 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if entity @s[scores={acttimer=6..10}] if block 0 32 49 oak_log run setblock 0 32 49 air destroy
execute if entity @s[scores={acttimer=8}] run summon item 0 33 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if entity @s[scores={acttimer=8}] run setblock 0 33 49 air destroy
execute if entity @s[scores={acttimer=10}] run summon item 0 34 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:1b}}
execute if entity @s[scores={acttimer=10}] run summon item 0 35 49 {Health:10000,Motion:[0.0,0.2,0.0],Tags:["forkill"],Item:{id:"minecraft:oak_log",Count:2b}}
execute if entity @s[scores={acttimer=10}] run fill 0 34 49 0 35 49 air destroy
execute if entity @s[scores={acttimer=14}] run function ttt:act1/acttimer_event1
execute if entity @s[scores={acttimer=26}] run particle explosion 0 30.2 49 1.75 0 1.75 0 80 force @a
execute if entity @s[scores={acttimer=26}] run particle block oak_leaves 0 30.2 49 1.75 0 1.75 0 100 force @a
execute if entity @s[scores={acttimer=26}] run scoreboard players set @a[x=-2,y=30,z=47,dx=4,dy=2,dz=4,team=p] deathreason 6
execute if entity @s[scores={acttimer=26}] run effect give @a[x=-2,y=30,z=47,dx=4,dy=2,dz=4,team=p] instant_damage 1 10 true
execute if entity @s[scores={acttimer=27}] run scoreboard players set @s acttimer 0

# changed from 33 -> 40
execute if entity @s[scores={acttimer=40}] run kill @p[scores={deathreason=15}]
execute if entity @s[scores={acttimer=40}] run scoreboard players set @s acttimer 0

#execute if entity @s[scores={acttimer=65}] run summon villager -31 19 28 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,Tags:["forkill","quandale"],CustomName:'{"text":"Quandale Dingle","color":"#E05A00","italic":false}',VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{},ArmorItems:[{},{},{},{id:"minecraft:deepslate_lapis_ore",Count:1b}]}
#execute if entity @s[scores={acttimer=65}] run particle cloud -31 20 28 .2 .5 .2 0 30 force @a
#execute if entity @s[scores={acttimer=65}] run execute as @e[tag=quandale] at @s run playsound custom.act2.quandale master @a ~ ~ ~ 1000
#execute if entity @s[scores={acttimer=65}] run execute as @e[tag=quandale] at @s run tp @s ~ ~ ~ facing entity @p[team=p]
#execute if entity @s[scores={acttimer=65}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"Greetings!","color":"#E05A00"}]

#execute if entity @s[scores={acttimer=79}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"Quandale Dingle here.","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=101}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"*hyperventilating*","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=109}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"My cousin Henry Bartholomew Dingle Nut-","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=147}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"*goofy ahh laugh*","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=157}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"My Asian brother, Quanliling Dingle","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=193}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"put illegal substances in my ramen and I died.","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=231}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"*shocked noises + amnesia*","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=243}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"What\'s up, guys?","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=259}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"It\'s Quandale Dingle here.","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=281}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"*goofy ahh laugh*","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=294}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"I have been arrested for multiple crimes-","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=323}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"*hyperventilating*","color":"#E05A00"}]
#execute if entity @s[scores={acttimer=335}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"Including:","color":"#E05A00"}]

#execute at @e[tag=quandale] if entity @s[scores={acttimer=345}] run scoreboard players set @p[team=p] deathreason 19
#execute if entity @s[scores={acttimer=345}] run kill @a[scores={deathreason=19},team=p]
#execute if entity @s[scores={acttimer=345}] run scoreboard players set @s acttimer 0

execute if entity @s[scores={acttimer=370}] run fill -17 32 78 -17 31 80 air destroy
execute if entity @s[scores={acttimer=370}] run execute as @e[tag=faketnt] at @s run particle explosion_emitter -18 31 79 10 10 10 0 200 force @a
execute if entity @s[scores={acttimer=370}] run execute as @e[tag=faketnt] at @s run playsound entity.generic.explode master @a -18 31 79 1000
execute if entity @s[scores={acttimer=370}] run execute as @e[tag=faketnt] at @s run scoreboard players set @p[team=p] deathreason 23
execute if entity @s[scores={acttimer=370}] run execute as @e[tag=faketnt] at @s run kill @p[team=p]
execute if entity @s[scores={acttimer=370}] run kill @e[type=tnt]
execute if entity @s[scores={acttimer=370}] run scoreboard players set @s acttimer 0