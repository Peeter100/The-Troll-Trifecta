execute unless score @s acttimer matches -2340..-1119 as @a[tag=!testing] at @s unless entity @s[x=-1,y=35,z=8,dx=2,dy=1,dz=2] run tp @s 0 35 9
execute if score @s acttimer matches -2340..-1119 as @a[tag=!testing] at @s unless entity @s[x=43,y=30,z=-16,dx=0,dy=0,dz=0] run tp @s 43 30 -16 0 0
effect give @a invisibility 1 0 true
scoreboard players add @s acttimer 1

execute if score @s acttimer matches -2440 if score @s actunlocked matches 2.. run scoreboard players enable @a[team=p] Game_Choice
execute if score @s acttimer matches -2440 if score @s actunlocked matches 2.. run tellraw @a {"color":"green","text":"[Skip Intro]","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to skip the Act 1 Intro!","color":"green","italic":false}]},"clickEvent":{"action":"run_command","value":"/trigger Game_Choice set 1"}}
execute if score @s acttimer matches -2440..-681 if score @s actunlocked matches 2.. if entity @a[team=p,scores={Game_Choice=1}] run function ttt:act1/skip_main_intro
execute if score @s acttimer matches -2440 run title @a title [{"text":"","color":"gold"},{"text":"Peeter100 presents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2436 run title @a title [{"text":"P","color":"gold"},{"text":"eeter100 presents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2432 run title @a title [{"text":"Pe","color":"gold"},{"text":"eter100 presents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2428 run title @a title [{"text":"Pee","color":"gold"},{"text":"ter100 presents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2424 run title @a title [{"text":"Peet","color":"gold"},{"text":"er100 presents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2420 run title @a title [{"text":"Peete","color":"gold"},{"text":"r100 presents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2416 run title @a title [{"text":"Peeter","color":"gold"},{"text":"100 presents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2412 run title @a title [{"text":"Peeter1","color":"gold"},{"text":"10 presents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2408 run title @a title [{"text":"Peeter10","color":"gold"},{"text":"0 presents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2404 run title @a title [{"text":"Peeter100","color":"gold"},{"text":" presents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2400 run title @a title [{"text":"Peeter100 p","color":"gold"},{"text":"resents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2396 run title @a title [{"text":"Peeter100 pr","color":"gold"},{"text":"esents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2392 run title @a title [{"text":"Peeter100 pre","color":"gold"},{"text":"sents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2388 run title @a title [{"text":"Peeter100 pres","color":"gold"},{"text":"ents","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2384 run title @a title [{"text":"Peeter100 prese","color":"gold"},{"text":"nts","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2380 run title @a title [{"text":"Peeter100 presen","color":"gold"},{"text":"ts","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2376 run title @a title [{"text":"Peeter100 present","color":"gold"},{"text":"s","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2372 run title @a title [{"text":"Peeter100 presents","color":"gold"},{"text":"","color":"gold","obfuscated":true}]
execute if score @s acttimer matches -2360 run title @a reset
execute if score @s acttimer matches -2360 run summon armor_stand 43 30 -6 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","cutscene","cutscenep100"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[0F,0F],HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:8}},{}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:93}}]}
execute if score @s acttimer matches -2360 run summon armor_stand 43 30 -3 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","cutscene","trollgefeet"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F]}
execute if score @s acttimer matches -2360 run summon armor_stand 43 30 -3 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","cutscene","trollgearms"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F]}

# -2340
execute if score @s acttimer matches -2340 at @r run playsound custom.intro.va.monologue master @a ~ ~ ~ 1000
execute if score @s acttimer matches -2340 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"...and that should do it!","color":"gold"}]
execute if score @s acttimer matches -2304 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"The preperations for my universe travelling machine are finally complete!","color":"gold"}]
execute if score @s acttimer matches -2304 run item replace entity @e[type=armor_stand,tag=cutscenep100] weapon.mainhand with emerald{CustomModelData:100}
execute if score @s acttimer matches -2304 run data merge entity @e[type=armor_stand,tag=cutscenep100,limit=1] {Pose:{Head:[-25f,0f,0f]}}
execute if score @s acttimer matches -2210 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Now I will be able to travel between different franchises,","color":"gold"}]
execute if score @s acttimer matches -2160 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"and all within the confines of Minecraft!","color":"gold"}]
execute if score @s acttimer matches -2100 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Recruit people for help,","color":"gold"}]
execute if score @s acttimer matches -2068 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"maybe steal some technologies...","color":"gold"}]
execute if score @s acttimer matches -2032 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Oh, with this I'll be able to make a truly unfair map that will be incompletable by all!","color":"gold"}]
execute if score @s acttimer matches -1913 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"The rage and the fury of the people will fuel my happiness for years to come!","color":"gold"}]
execute if score @s acttimer matches -1797 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Oh, I'll get so many inspirations and allies!","color":"gold"}]
execute if score @s acttimer matches -1711 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"I should stop rambling to myself...","color":"gold"}]
execute if score @s acttimer matches -1711 run item replace entity @e[type=armor_stand,tag=cutscenep100] weapon.mainhand with emerald{CustomModelData:8}
execute if score @s acttimer matches -1711 run data merge entity @e[type=armor_stand,tag=cutscenep100,limit=1] {Pose:{Head:[15f,10f,0f]}}
execute if score @s acttimer matches -1653 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Let's just start the machine!","color":"gold"}]
execute if score @s acttimer matches -1653 run data merge entity @e[type=armor_stand,tag=cutscenep100,limit=1] {Pose:{Head:[0f,0f,0f]}}

execute if score @s acttimer matches -1616 at @r run playsound custom.intro.va.dialogue master @a ~ ~ ~ 1000
execute if score @s acttimer matches -1616 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"TRAVELLING BETWEEN UNIVERSES?","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches -1616 run item replace entity @e[type=armor_stand,tag=cutscenep100] weapon.mainhand with emerald{CustomModelData:101}
execute if score @s acttimer matches -1616 run data merge entity @e[type=armor_stand,tag=cutscenep100,limit=1] {Pose:{Head:[-10f,0f,0f]}}
execute if score @s acttimer matches -1616 as @e[type=armor_stand,tag=cutscenep100] at @s run tp @s ~ ~ ~-0.5
execute if score @s acttimer matches -1616 run data merge entity @e[type=armor_stand,tag=trollgefeet,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:11}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:12}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:13}}]}
execute if score @s acttimer matches -1616 run data merge entity @e[type=armor_stand,tag=trollgearms,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:14}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:15}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:16}}]}
execute if score @s acttimer matches -1616 run particle large_smoke 43 31 -3 .5 .5 .5 .01 100 force @a
execute if score @s acttimer matches -1567 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"ARE YOU PLANNING TO ESCAPE?","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches -1524 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Wait, how are you back?","color":"gold"}]
execute if score @s acttimer matches -1499 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"I AM TROLLFACE","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches -1462 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"TROLLGE","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches -1440 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"INVENTOR OF THE CONCEPT THAT IS TROLLING","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches -1370 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"YOU CANNOT GET RID OF ME","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches -1330 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"ONCE YOU SUMMONED ME, YOU WERE JUST ASKING TO BE TORTURED","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches -1227 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"AND IF IT'S OTHER FRANCHISES YOU WISH TO BRING, THEN SO BE IT!","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches -1119 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"What are you doing?!","color":"gold"}]
execute if score @s acttimer matches -1119 at @r run playsound custom.intro.engine.square master @a ~ ~ ~ 10000
execute if score @s acttimer matches -1099 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"YOU ARE NOT LEAVING","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches -1063 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"SO I'M BRINGING EVERYONE HERE INSTEAD","color":"#942626","font":"trollge"}]
execute if score @s acttimer matches -988 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"That's an oversimplified explanation...","color":"gold"}]
execute if score @s acttimer matches -950 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Wait...","color":"gold"}]
execute if score @s acttimer matches -945 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Don't actually-","color":"gold"}]
execute if score @s acttimer matches -936 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"NOOO-!","color":"gold"}]

execute if score @s acttimer matches -1060 at @r run playsound custom.intro.engine.zap master @a ~ ~ ~ 0.6
execute if score @s acttimer matches -1040 at @r run playsound custom.intro.engine.zap master @a ~ ~ ~ 0.5
execute if score @s acttimer matches -1000 at @r run playsound custom.intro.engine.zap master @a ~ ~ ~ 0.5
execute if score @s acttimer matches -1000 at @r run playsound custom.intro.engine.impact master @a ~ ~ ~ 0.7
execute if score @s acttimer matches -1000 at @r run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 10000 1
execute if score @s acttimer matches -1000 at @r run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 10000 1
execute if score @s acttimer matches -975 at @r run playsound custom.intro.engine.zap master @a ~ ~ ~ 0.6
execute if score @s acttimer matches -960 at @r run playsound custom.intro.engine.zap master @a ~ ~ ~ 0.5
execute if score @s acttimer matches -950 at @r run playsound custom.intro.engine.impact master @a ~ ~ ~ 0.7
execute if score @s acttimer matches -945 at @r run playsound custom.intro.engine.zap master @a ~ ~ ~ 0.6
execute if score @s acttimer matches -940 at @r run playsound custom.intro.engine.zap master @a ~ ~ ~ 0.7
execute if score @s acttimer matches -937 at @r run playsound custom.intro.engine.impact master @a ~ ~ ~ 0.8
execute if score @s acttimer matches -937..-930 at @r run playsound entity.generic.explode master @a ~ ~ ~ 1000

execute if score @s acttimer matches -937 run title @a times 40 60 40
execute if score @s acttimer matches -936 run title @a title {"text":"The Troll Trifecta","color":"yellow","bold":true}
execute if score @s acttimer matches -936 run title @a subtitle [{"text":"The ","color":"white"},{"text":"Unfair","color":"red","underlined":true},{"text":" Course "},{"text":"3","color":"gold","bold":true}]
execute if score @s acttimer matches -936 at @r run playsound entity.wither.spawn master @a ~ ~ ~ 10000 0
execute if score @s acttimer matches -936 at @r run playsound entity.wither.spawn master @a ~ ~ ~ 10000 0
execute if score @s acttimer matches -936 at @r run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 10000 1
execute if score @s acttimer matches -936 at @r run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 10000 1
execute if score @s acttimer matches -781 run title @a reset

execute if score @s acttimer matches -780 run tellraw @a [{"text":"Useful Tips:","color":"green","bold":true},{"text":"\n- reading is very important\n- if things look like they're out of the playing area, they most likely are\n- always look around when entering new areas\n- if you get stuck, click on the walkthrough in the inventory!","bold":false}]

execute if score @s acttimer matches -680 run scoreboard players reset @a Game_Choice
execute if score @s acttimer matches -680 run kill @e[tag=cutscene]
execute if score @s acttimer matches -680 run tp @a 0 30 43
execute if score @s acttimer matches -680 run function ttt:map_respawn