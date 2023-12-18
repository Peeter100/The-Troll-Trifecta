#scoreboard players add @s deathtime 1

execute if score @s deathtime matches 3348 run function ttt:finale/intro/intervention/arena_tp
execute if score @s deathtime matches 3360 at @r[team=p] run playsound custom.finale.intervention.howareyouback master @a ~ ~ ~ 1000
execute if score @s deathtime matches 3360 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"HOW ARE YOU BACK?","color":"#942626","font":"trollge"}]

execute if score @s deathtime matches 3390 at 00000004-0000-0000-0000-000000000000 run particle cloud ~ ~1 ~ .2 .5 .2 0 20 force @a 
execute if score @s deathtime matches 3390 run data merge entity 00000004-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:8}},{}],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:3}}]}

execute if score @s deathtime matches 3399 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"OH","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 3415 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"I SEE","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 3439 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"You're going down!","color":"gold"}]
execute if score @s deathtime matches 3439 run data merge entity 00000004-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:10}}]}
execute if score @s deathtime matches 3473 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"YOU'RE TAKING THIS WAY TOO SERIOUSLY","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 3473 run data merge entity 00000004-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:8}},{}]}
execute if score @s deathtime matches 3539 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Hey, I worked hard on that speech, okay?","color":"gold"}]
execute if score @s deathtime matches 3593 run tellraw @a [{"text":"<","color":"white"},{"text":"Peeter100","color":"gold"},{"text":"> "},{"text":"Here...","color":"gold"}]
execute if score @s deathtime matches 3593 as 00000004-0000-0000-0000-000000000000 at @s run tp @s ~ ~ ~ -110 ~

execute if score @s deathtime matches 3610 run function ttt:finale/intro/intervention/summon_ents2

execute if score @s deathtime matches 3630 at @r[team=p] run playsound custom.t2s.shadow.trollge_trapped master @a ~ ~ ~ 1000
execute if score @s deathtime matches 3630 run tellraw @a [{"text":"<","color":"white"},{"text":"Shadow","color":"#C42626"},{"text":"> "},{"text":"You were the one who trapped us here!","color":"#C42626"}]
execute if score @s deathtime matches 3630 run item replace entity @e[type=armor_stand,tag=shadow,tag=watcherbody,limit=1] weapon.offhand with gold_ingot{CustomModelData:98}

execute if score @s deathtime matches 3650 at @r[team=p] run playsound custom.finale.intervention.silence master @a ~ ~ ~ 1000
execute if score @s deathtime matches 3650 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"THEY'RE FINALLY CATCHING ON","color":"#942626","font":"trollge"}]

execute if score @s deathtime matches 3672 at @r[team=p] run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000
execute if score @s deathtime matches 3672 run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"this will be entertaining","color":"#C4E2FF","font":"sans"}]
execute if score @s deathtime matches 3672 run item replace entity @e[type=armor_stand,tag=sans,tag=watcherhead,limit=1] armor.head with bone{CustomModelData:23}

execute if score @s deathtime matches 3696 as @e[type=armor_stand,tag=trollge] at @s run tp @s ~ ~ ~ -90 0
execute if score @s deathtime matches 3706 run function ttt:finale/intro/intervention/silence

execute if score @s deathtime matches 3733 run item replace entity 00000003-0000-0000-0000-000000000000 weapon.mainhand with chain{CustomModelData:64}
execute if score @s deathtime matches 3743 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"NONE OF THIS INVOLVES YOU","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 3804 run function ttt:finale/intro/intervention/frozethem
execute if score @s deathtime matches 3843 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"THEY CAN STILL WATCH","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 3878 run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"LET'S HAVE A SPECTACULAR FINISH, YOU TWO","color":"#942626","font":"trollge"}]
execute if score @s deathtime matches 3878 run function ttt:finale/intro/intervention/assign_rng

execute if score @s deathtime matches 3938 run data merge entity 00000004-0000-0000-0000-000000000000 {HandItems:[{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:103}},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:105}}]}
execute if score @s deathtime matches 3938..3958 as 00000004-0000-0000-0000-000000000000 at @s anchored eyes run tp @s ~ ~0.2 ~ facing entity 00000001-0000-0000-0000-000000000000 eyes
execute if score @s deathtime matches 3938..3958 as 00000004-0000-0000-0000-000000000000 run function ttt:update_head_pose

execute if score @s deathtime matches 3958 run function ttt:finale/intro/intervention/start_fight