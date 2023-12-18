scoreboard players set @s actpart 4
scoreboard players set @s acttimer 0
scoreboard players set @s dialogueseq 0
scoreboard players set @s dialoguetime 0

scoreboard players set @s am_gamescore1 0
scoreboard players set @s am_gamescore2 0
scoreboard players set @s am_gamescore3 0
scoreboard players set @s am_gamescore4 0
scoreboard players set @s am_gamescore5 0
scoreboard players set @s am_gamescore6 0
scoreboard players set @s am_gamescore7 0

scoreboard players set @s f3_attackid 2
scoreboard players set @s f3_attacktime 0
scoreboard players set @s f3_attackcombo 0
scoreboard players set @s f3_stunmeter 0
scoreboard players set @s f3_vinspawned 0
scoreboard players set @s f3_pillspawned 0
scoreboard players set @s f3_skelspawned 0
scoreboard players set @s f3_deathhintseq 0
scoreboard players set @s f3_bosstakenhp 0
scoreboard players set @s f3_deaths 0

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