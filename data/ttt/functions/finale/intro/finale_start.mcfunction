tp @a -135 15 21 -90 0
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

scoreboard players set @s f3_attackid 0
scoreboard players set @s f3_attacktime 0
scoreboard players set @s f3_attackcombo 0
scoreboard players set @s f3_stunmeter 0
scoreboard players set @s f3_vinspawned 0
scoreboard players set @s f3_pillspawned 0
scoreboard players set @s f3_skelspawned 0
scoreboard players set @s f3_deathhintseq 0
scoreboard players set @s f3_bosstakenhp 0
scoreboard players set @s f3_deaths 0

bossbar set minecraft:trollgebar players @a
bossbar set minecraft:trollgebar visible true
effect clear @a invisibility

execute at 00000001-0000-0000-0000-000000000000 run playsound custom.finale.intervention.makethisquick master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"LET'S MAKE THIS QUICK","color":"#942626","font":"trollge"}]
give @a[team=p] netherite_axe{display:{Name:'{"text":"Netherite Axe","color":"yellow","italic":false}'},HideFlags:39,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s}],baxe:1b} 1