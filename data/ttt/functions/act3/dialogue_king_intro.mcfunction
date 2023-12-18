scoreboard players add @s[scores={dialoguetime=..999}] dialoguetime 1

# execute if entity @s[scores={dialoguetime=1}] run function ttt:act3/rain_start

execute if entity @s[scores={dialoguetime=60,am_seentrollge=0}] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"STEP 1 - WAIT FOR IT TO RAIN","color":"#942626","font":"trollge"}]
execute if entity @s[scores={dialoguetime=60,am_seentrollge=0}] run playsound custom.t2s.trollge.step1 master @a -3 31 261 1000

execute if entity @s[scores={dialoguetime=160}] run fill -5 45 206 -1 49 206 air
execute if entity @s[scores={dialoguetime=160}] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Hello, citizens!","color":"yellow"}]
execute if entity @s[scores={dialoguetime=160}] as @a at @s run playsound custom.act3.king.talk master @s ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=190}] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"I am here to announce a real-life Among Us tournament!","color":"yellow"}]
execute if entity @s[scores={dialoguetime=190}] as @a at @s run playsound custom.act3.king.laugh master @s ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=270}] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"What is the reward you ask?","color":"yellow"}]
execute if entity @s[scores={dialoguetime=270}] as @a at @s run playsound custom.act3.king.talk master @s ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=320}] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"A stone button that can be placed on a gold block!","color":"yellow"}]
execute if entity @s[scores={dialoguetime=320}] as @a at @s run playsound custom.act3.king.laugh master @s ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=350}] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"..even in Adventure Mode!","color":"yellow"}]
execute if entity @s[scores={dialoguetime=350}] as @a at @s run playsound custom.act3.king.talk master @s ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=450}] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"If you want to participate then head into my castle!","color":"yellow"}]
execute if entity @s[scores={dialoguetime=450}] as @a at @s run playsound custom.act3.king.talk master @s ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=550}] run tellraw @a [{"text":"<","color":"white"},{"text":"King","color":"yellow"},{"text":"> "},{"text":"Use the balcony or the open side entrance.","color":"yellow"}]
execute if entity @s[scores={dialoguetime=550}] as @a at @s run playsound custom.act3.king.talk master @s ~ ~ ~ 1000

execute if entity @s[scores={dialoguetime=590..599}] run scoreboard players set @s dialoguetime 589

execute if entity @s[scores={dialoguetime=601}] positioned -34 28 217 run function ttt:act3/rain_items
execute if entity @s[scores={dialoguetime=605..609}] run scoreboard players set @s dialoguetime 604

execute if entity @s[scores={dialoguetime=600..609}] as @e[type=item,tag=!casted] at @s if block ~ ~ ~ water run function ttt:act3/rain_mix_add
execute if entity @s[scores={dialoguetime=610..}] as @e[type=item,tag=!casted] at @s if block ~ ~ ~ water run function ttt:act3/rain_mix_add_alt

execute if entity @s[scores={dialoguetime=610..}] as @a[team=p,nbt={ActiveEffects:[{Id:13b}]}] at @s run function ttt:act3/oil_splash
execute if entity @s[scores={dialoguetime=610..}] as @a[team=p,scores={drinkpotion=1..}] at @s run function ttt:act3/oil_drink
execute if entity @s[scores={dialoguetime=610..619,am_seentrollge=0}] if entity @a[team=p,scores={x=-20,y=25..26,z=216..218}] run function ttt:act3/rain_walter_mad
execute if entity @s[scores={dialoguetime=615..619}] run scoreboard players set @s dialoguetime 614

execute if entity @s[scores={dialoguetime=620..629}] as @a[team=p,scores={Answer_Q1=1..}] at @s run function ttt:act3/rain_walter_choice
execute if entity @s[scores={dialoguetime=625..629}] run scoreboard players set @s dialoguetime 624

execute if entity @s[scores={dialoguetime=630}] run data merge entity @e[tag=walterhead,limit=1] {CustomName:'{"text":"Heisenberg","color":"#FFA159","italic":false}'}
execute if entity @s[scores={dialoguetime=630}] as @e[tag=walterhead] at @s run playsound custom.t2s.waltuh.trollge_conversation master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=630}] run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"You're goddamn right.","color":"#FFA159"}]

execute if entity @s[scores={dialoguetime=657}] run data merge entity @e[tag=walterbody,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:81}},{}]}

execute if entity @s[scores={dialoguetime=663}] run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"And it's time to pay the consequences for messing with my empire.","color":"#FFA159"}]

### execute if entity @s[scores={dialoguetime=741}] as @e[tag=walterbody] at @s anchored eyes run particle reverse_portal ^-0.4 ^-0.25 ^0.5 0 0 0 1 50 force @a
### execute if entity @s[scores={dialoguetime=741}] as @e[tag=walterbody] at @s anchored eyes run particle cloud ^-0.4 ^-0.25 ^0.5 0 0 0 0.1 5 force @a
execute if entity @s[scores={dialoguetime=741}] as @e[tag=walterbody] at @s anchored eyes positioned ^-0.4 ^-0.25 ^0.5 run particle reverse_portal ~ 26.6 ~ 0 0 0 1 50 force @a
execute if entity @s[scores={dialoguetime=741}] as @e[tag=walterbody] at @s anchored eyes positioned ^-0.4 ^-0.25 ^0.5 run particle cloud ~ 26.6 ~ 0 0 0 0.1 5 force @a
execute if entity @s[scores={dialoguetime=741}] run data merge entity @e[tag=walterbody,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:82}},{}]}

execute if entity @s[scores={dialoguetime=747}] run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"My gun-!","color":"#FFA159"}]

execute if entity @s[scores={dialoguetime=759}] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"WHO NEEDS A WATER GENERATOR WHEN YOU HAVE RAIN?","color":"#942626","font":"trollge"}]
execute if entity @s[scores={dialoguetime=759}] run data merge entity @e[tag=walterbody,limit=1] {HandItems:[{id:"minecraft:chain",Count:1b,tag:{CustomModelData:79}},{}]}

execute if entity @s[scores={dialoguetime=824}] run tellraw @a [{"text":"<","color":"white"},{"text":"Heisenberg","color":"#FFA159"},{"text":"> "},{"text":"It's not actually-","color":"#FFA159"}]

execute if entity @s[scores={dialoguetime=837}] run fill -19 26 216 -19 26 218 air
execute if entity @s[scores={dialoguetime=837}] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"KEEP GOING","color":"#942626","font":"trollge"}]
execute if entity @s[scores={dialoguetime=856}] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"IGNORE HIM","color":"#942626","font":"trollge"}]
execute if entity @s[scores={dialoguetime=877..879}] run scoreboard players set @s dialoguetime 876

tag @a remove oilwork
execute as @a[team=p,tag=oiled,scores={x=-12..,y=25..46,z=208..}] at @s if block ~ ~2 ~ #ttt:passable if block ~ ~3 ~ #ttt:passable if block ~ ~4 ~ #ttt:passable if block ~ 44 ~ #ttt:passable run tag @s add oilwork
effect give @a[tag=oilwork] levitation 1 2 true
effect clear @a[team=p,tag=!oilwork] levitation

execute if entity @s[scores={dialoguetime=875..879,am_seentrollge=0}] if entity @a[team=p,scores={y=28..},tag=oiled] run scoreboard players set @s dialoguetime 880
execute if entity @s[scores={dialoguetime=880}] as @r[team=p,tag=oiled] at @s run playsound custom.t2s.trollge.tournament master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=880}] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"WE'LL SEE EACH OTHER VERY SOON","color":"#942626","font":"trollge"}]
execute if entity @s[scores={dialoguetime=948}] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"WE'RE GONNA HAVE SO MUCH FUN!","color":"#942626","font":"trollge"}]

## execute as @a[team=p,scores={x=8..,y=35..},tag=oiled] at @s run function ttt:act3/overstep
## execute as @a[team=p,scores={x=..-14,y=35..},tag=oiled] at @s run function ttt:act3/overstep
## execute as @a[team=p,scores={z=270..},tag=oiled] at @s run function ttt:act3/overstep