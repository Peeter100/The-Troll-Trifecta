tp @e[type=armor_stand,tag=trollge] -101 15 21 90 0
kill @e[tag=forkill,tag=!trollge]
summon iron_golem -101 15 21 {NoGravity:1b,Silent:1b,Team:"enemy",PersistenceRequired:1b,NoAI:1b,Health:600f,PlayerCreated:0b,Tags:["forkill","trollgeai"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:"minecraft:generic.max_health",Base:600}],Rotation:[90F,0F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:127s}]}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:127s}]}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:127s}]}},{}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],UUID:[I;1,0,0,0]}

scoreboard players set @s f3_healthmargin 300
scoreboard players set @s f3_healthmax 600
scoreboard players operation @s f3_healthmargin *= @s playercount
scoreboard players operation @s f3_healthmax *= @s playercount
execute if score @s f3_healthmargin matches ..299 run scoreboard players set @s f3_healthmargin 300
execute if score @s f3_healthmax matches ..599 run scoreboard players set @s f3_healthmax 600
scoreboard players operation @s f3_bosshp = @s f3_healthmax

execute store result entity @e[type=iron_golem,tag=trollgeai,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get @s f3_healthmax
execute store result entity @e[type=iron_golem,tag=trollgeai,limit=1] Health float 1 run scoreboard players get @s f3_healthmax

execute store result bossbar trollgebar value run scoreboard players get @s f3_healthmax
execute store result bossbar trollgebar max run scoreboard players get @s f3_healthmax