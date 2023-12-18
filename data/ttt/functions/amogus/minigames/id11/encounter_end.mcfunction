tp @a[tag=amplayer] @e[type=armor_stand,tag=sansloc,limit=1]
scoreboard players set @s am_gametimer 1080
scoreboard players set @s[scores={am_seensans=2}] am_gametimer 2000
scoreboard players set @s am_gamescore4 1
clear @a iron_axe
clear @a shield
effect give @a[tag=amplayer] invisibility 99999 0 true
tag @a[tag=amplayer] remove offhandnoupdate
kill @e[type=item]
kill @e[type=armor_stand,tag=sansloc]