scoreboard players add @s dialoguetime 1
execute if entity @s[scores={dialoguetime=65,cr_seensans=..0}] run summon villager -31 19 28 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,Tags:["forkill","quandale"],CustomName:'{"text":"Quandale Dingle","color":"#E05A00","italic":false}',VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{},ArmorItems:[{},{},{},{id:"minecraft:deepslate_lapis_ore",Count:1b}]}
execute if entity @s[scores={dialoguetime=65,cr_seensans=1..}] run summon villager -31 19 28 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,Tags:["forkill","quandale"],CustomName:'{"text":"Quandale Dingle","color":"#E05A00","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:deepslate_lapis_ore",Count:1b}],VillagerData:{level:99,profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:1,buy:{id:"minecraft:oak_log",Count:6b},sell:{id:"minecraft:deepslate_emerald_ore",Count:1b,tag:{display:{Name:'{"text":"CRAZY PLANKS","color":"white","italic":false}',Lore:['{"text":"Planks gone wrong (not clickbait).","color":"gray","italic":false}']},bizzaretown:1b}}}]}}
execute if entity @s[scores={dialoguetime=65}] run particle cloud -31 20 28 .2 .5 .2 0 30 force @a
execute if entity @s[scores={dialoguetime=65}] at @e[type=villager,tag=quandale] run playsound custom.act2.quandale master @a ~ ~ ~ 1000
execute if entity @s[scores={dialoguetime=65}] as @e[type=villager,tag=quandale] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[team=p] eyes
execute if entity @s[scores={dialoguetime=65}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"Greetings!","color":"#E05A00"}]

execute if entity @s[scores={dialoguetime=79}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"Quandale Dingle here.","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=101}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"*hyperventilating*","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=109}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"My cousin Henry Bartholomew Dingle Nut-","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=147}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"*goofy ahh laugh*","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=157}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"My Asian brother, Quanliling Dingle","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=193}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"put illegal substances in my ramen and I died.","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=231}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"*shocked noises + amnesia*","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=243}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"What's up, guys?","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=259}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"It's Quandale Dingle here.","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=281}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"*goofy ahh laugh*","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=294}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"I have been arrested for multiple crimes-","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=323}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"*hyperventilating*","color":"#E05A00"}]
execute if entity @s[scores={dialoguetime=335}] run tellraw @a [{"text":"<","color":"white"},{"text":"Quandale Dingle","color":"#E05A00"},{"text":"> "},{"text":"Including:","color":"#E05A00"}]

execute at @e[type=villager,tag=quandale] if entity @s[scores={dialoguetime=345..}] run scoreboard players set @p[team=p] deathreason 19
execute if entity @s[scores={dialoguetime=345..}] run kill @a[scores={deathreason=19},team=p]

execute as @a[team=p] unless score @s deathreason matches 19 if entity @s[nbt={Inventory:[{tag:{bizzaretown:1b}}]}] at @s run function ttt:act2/quandale_speedkill