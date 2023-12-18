scoreboard players add @s dialoguetime 1

execute if score @s dialoguetime matches 1 run function ttt:finale/afterfinale/fixup
execute if score @s dialoguetime matches 35 run effect clear @a resistance
execute if score @s dialoguetime matches 40 run effect give @a instant_damage 1 0 true

execute if score @s dialoguetime matches 80 run playsound custom.finale.end.trollge_monologue master @a -100 16 21 1000
execute if score @s dialoguetime matches 80 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"THAT WAS FUN","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 103 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"BUT YOU'RE CLEARLY FORGETTING WHO YOU'RE UP AGAINST","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 205 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"I AM TROLLFACE","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 252 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"DID YOU REALLY EXPECT A FAIR FIGHT?","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 328 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"THAT BOSSBAR AT THE TOP OF THE SCREEN DOESN'T MENTION ANYTHING ABOUT MY HEALTH","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 472 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"YOU CANNOT KILL ME","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 523 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"THE THING YOU JUST LOWERED IS MY PATIENCE","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 611 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"I'M TIRED OF ENTERTAINING THESE FUTILE ATTEMPTS TO GET RID OF ME","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 745 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"IT'S TIME FOR YOU TO SEE","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 745 run data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:61}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:62}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:63}}]}
execute if score @s dialoguetime matches 745 run data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:64}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:65}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:66}}]}

execute if score @s dialoguetime matches 812 run summon lightning_bolt -105 15 21
execute if score @s dialoguetime matches 822 run function ttt:finale/afterfinale/shaggy_viewfocus

execute if score @s dialoguetime matches 830 run playsound custom.finale.end.trollge_surprised master @a -100 16 21 1000
execute if score @s dialoguetime matches 830 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"WHAT WAS THAT?","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 830 run data merge entity 00000002-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:11}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:12}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:13}}]}
execute if score @s dialoguetime matches 830 run data merge entity 00000003-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:14}},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:15}}],ArmorItems:[{},{},{},{id:"minecraft:chain",Count:1b,tag:{CustomModelData:16}}]}

execute if score @s dialoguetime matches 866 as @a[team=p] at @s run tp @s ~ ~ ~ 90 0
execute if score @s dialoguetime matches 866 run summon lightning_bolt -105 15 21
execute if score @s dialoguetime matches 880 run playsound custom.finale.end.shaggy_appear master @a -100 16 21 1000
execute if score @s dialoguetime matches 881 run particle flash -105 17 21 0 0 0 1 0 force @a
execute if score @s dialoguetime matches 880 run summon lightning_bolt -105 15 21
execute if score @s dialoguetime matches 895 run summon lightning_bolt -105 15 21
execute if score @s dialoguetime matches 900 run particle portal -105 17 21 .4 1 .4 1 1000 force @a
execute if score @s dialoguetime matches 910..944 run summon lightning_bolt -105 15 21
execute if score @s dialoguetime matches 930..944 run particle dust_color_transition 1 1 1 2 0.2 0.44 0.29 -105 17 21 1 3 1 1 5 normal @a

execute if score @s dialoguetime matches 944..1093 run particle dust 0.2 0.44 0.29 1 -105 17 21 .3 .7 .3 1 3 force @a

execute if score @s dialoguetime matches 943 run particle explosion_emitter -105 17 21 0 0 0 1 2 force @a
execute if score @s dialoguetime matches 943 run playsound custom.t2s.shaggy.finale master @a -100 16 21 1000
execute if score @s dialoguetime matches 944 run item replace entity @e[type=armor_stand,tag=shaggy] weapon.mainhand with gold_ingot{CustomModelData:99}
execute if score @s dialoguetime matches 944 run particle poof -105 17 21 .2 .5 .2 1 100 force @a
execute if score @s dialoguetime matches 983 run tellraw @a [{"text":"<","color":"white"},{"text":"Shaggy","color":"#33724A"},{"text":"> "},{"text":"I was told this universe needs my help.","color":"#33724A"}]
execute if score @s dialoguetime matches 1045 run tellraw @a [{"text":"<","color":"white"},{"text":"Shaggy","color":"#33724A"},{"text":"> "},{"text":"Oooh...","color":"#33724A"}]
execute if score @s dialoguetime matches 1058 run tellraw @a [{"text":"<","color":"white"},{"text":"Shaggy","color":"#33724A"},{"text":"> "},{"text":"This will be too easy!","color":"#33724A"}]

execute if score @s dialoguetime matches 1093 run tp @a -118 11 21
execute if score @s dialoguetime matches 1093 run bossbar set trollgebar visible false
execute if score @s dialoguetime matches 1093 run playsound custom.finale.end.trollge_death master @a -100 16 21 1000
execute if score @s dialoguetime matches 1093 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"WHAT ARE YOU-?","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 1113 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"NOOOO","color":"#942626","font":"trollge"}]
execute if score @s dialoguetime matches 1118 run function ttt:finale/afterfinale/trollge_explode2
execute if score @s dialoguetime matches 1211 run function ttt:finale/afterfinale/trollge_death

execute if score @s dialoguetime matches 1300 run tellraw @a [{"text":"Shaggy, using 1% of his power, trapped Trollge's physical body in a different multiverse.","color":"#33724A"}]
execute if score @s dialoguetime matches 1400 run tellraw @a [{"text":"All of his internet influence will remain unchanged.","color":"#33724A"}]
execute if score @s dialoguetime matches 1470 run tellraw @a [{"text":"Shaggy also helped all of the characters return to their original franchises.","color":"#33724A"}]
execute if score @s dialoguetime matches 1570 run tellraw @a [{"text":"It's over.","color":"#33724A"}]

execute if score @s dialoguetime matches 1629 run title @a clear
execute if score @s dialoguetime matches 1629 run title @a times 40 60 40
execute if score @s dialoguetime matches 1630 run title @a title {"text":"The Troll Trifecta","color":"yellow","bold":true}
execute if score @s dialoguetime matches 1630 run title @a subtitle {"text":"Thank you for playing!","color":"green"}
execute if score @s dialoguetime matches 1630 at @r run playsound entity.wither.spawn master @a ~ ~ ~ 10000 0
execute if score @s dialoguetime matches 1630 run advancement grant @a only ttt:act3

execute if score @s dialoguetime matches 1780 run function ttt:finale/afterfinale/map_end